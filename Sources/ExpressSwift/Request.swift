import Foundation
import NIO
import NIOHTTP1

public class Request {
  public let head: HTTPRequestHead
  public let body: Data?
  public var userInfo = [String: Any]()

  public var path: Path
  public let query: [URLQueryItem]?
  internal var parameters: [String: String] = [:]

  public let localAddress: SocketAddress?
  public let remoteAddress: SocketAddress?

  public init(head: HTTPRequestHead,
              body: Data?,
              localAddress: SocketAddress?,
              remoteAddress: SocketAddress?) {
    self.head = head
    self.body = body
    self.localAddress = localAddress
    self.remoteAddress = remoteAddress

    let urlComponents = URLComponents(string: head.uri)!

    path = Path(urlComponents.path)
    query = urlComponents.queryItems
  }

  public func getParameter<T: LosslessStringConvertible>(_ parameter: String) -> T? {
    guard let stringParameter = parameters[parameter] else {
      return nil
    }

    return T(stringParameter)
  }
}

public extension Request {
  enum JsonError: Swift.Error {
    case bodyIsEmpty
  }
  func json<T: Decodable>(_ type: T.Type) throws -> T {
    guard let body = body else { throw JsonError.bodyIsEmpty }
    let decoder = JSONDecoder()
    return try decoder.decode(type, from: body)
  }
}
