module Utilise
  # The HTTP toolbox module
  module HTTP
    # HTTP Request methods
    METHODS = %w(
      OPTIONS
      GET
      POST
      PUT
      PATCH
      DELETE
      COPY
      HEAD
      LINK
      UNLINK
      PURGE
      LOCK
      UNLOCK
      PROPFIND
      TRACE
      CONNECT
    )

    # HTTP Response codes and status messages
    STATUS = {
      100 => 'Continue',
      101 => 'Switching Protocols',
      200 => 'OK',
      201 => 'Created',
      202 => 'Accepted',
      203 => 'Non-Authoritative Information',
      204 => 'No Content',
      205 => 'Reset Content',
      206 => 'Partial Content',
      300 => 'Multiple Choices',
      301 => 'Moved Permanently',
      302 => 'Found',
      303 => 'See Other',
      304 => 'Not Modified',
      305 => 'Use Proxy',
      307 => 'Temporary Redirect',
      400 => 'Bad Request',
      401 => 'Unauthorized',
      402 => 'Payment Required',
      403 => 'Forbidden',
      404 => 'Not Found',
      405 => 'Method Not Allowed',
      406 => 'Not Acceptable',
      407 => 'Proxy Authentication Required',
      408 => 'Request Time-out',
      409 => 'Conflict',
      410 => 'Gone',
      411 => 'Length Required',
      412 => 'Precondition Failed',
      413 => 'Request Entity Too Large',
      414 => 'Request-URI Too Large',
      415 => 'Unsupported Media Type',
      416 => 'Requested range not satisfiable',
      417 => 'Expectation Failed',
      500 => 'Internal Server Error',
      501 => 'Not Implemented',
      502 => 'Bad Gateway',
      503 => 'Service Unavailable',
      504 => 'Gateway Time-out',
      505 => 'HTTP Version not supported'
    }

    # Information on HTTP response codes
    STATUS_TYPE = {
      1 => 'Informational - Request received, continuing process',
      2 => 'Success - The action was successfully received, understood, and accepted',
      3 => 'Redirection - Further action must be taken in order to complete the request',
      4 => 'Client Error - The request contains bad syntax or cannot be fulfilled',
      5 => 'Server Error - The server failed to fulfill an apparently valid request'
    }

    # HTTP request headers
    REQUEST_HEADER = %w(
      Accept
      Accept-Charset
      Accept-Encoding
      Accept-Language
      Authorization
      Expect
      From
      Host
      If-Match
      If-Modified-Since
      If-None-Match
      If-Range
      If-Unmodified-Since
      Max-Forwards
      Proxy-Authorization
      Range
      Referer
      TE
      User-Agent
    )

    # HTTP response headers
    RESPONSE_HEADERS = %w(
      Accept-Ranges
      Age
      ETag
      Location
      Proxy-Authenticate
      Retry-After
      Server
      Vary
      WWW-Authenticate
    )

    require 'utilise/http/first_line.rb'
    require 'utilise/http/headers.rb'
    require 'utilise/http/body.rb'
  end
end
