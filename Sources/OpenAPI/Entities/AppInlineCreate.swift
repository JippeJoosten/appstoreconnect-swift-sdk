// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppInlineCreate: Codable, Identifiable {
	public var type: `Type`
	public var id: String?
	public var attributes: Attributes
	public var relationships: Relationships?

	public enum `Type`: String, Codable, CaseIterable {
		case apps
	}

	public struct Attributes: Codable {
		public var bundleID: String
		public var sku: String
		public var primaryLocale: String

		public init(bundleID: String, sku: String, primaryLocale: String) {
			self.bundleID = bundleID
			self.sku = sku
			self.primaryLocale = primaryLocale
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.bundleID = try values.decode(String.self, forKey: "bundleId")
			self.sku = try values.decode(String.self, forKey: "sku")
			self.primaryLocale = try values.decode(String.self, forKey: "primaryLocale")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(bundleID, forKey: "bundleId")
			try values.encode(sku, forKey: "sku")
			try values.encode(primaryLocale, forKey: "primaryLocale")
		}
	}

	public struct Relationships: Codable {
		public var appStoreVersions: AppStoreVersions?
		public var appInfos: AppInfos?

		public struct AppStoreVersions: Codable {
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appStoreVersions
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: [Datum]? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppInfos: Codable {
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appInfos
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: [Datum]? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appStoreVersions: AppStoreVersions? = nil, appInfos: AppInfos? = nil) {
			self.appStoreVersions = appStoreVersions
			self.appInfos = appInfos
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appStoreVersions = try values.decodeIfPresent(AppStoreVersions.self, forKey: "appStoreVersions")
			self.appInfos = try values.decodeIfPresent(AppInfos.self, forKey: "appInfos")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appStoreVersions, forKey: "appStoreVersions")
			try values.encodeIfPresent(appInfos, forKey: "appInfos")
		}
	}

	public init(type: `Type`, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decodeIfPresent(String.self, forKey: "id")
		self.attributes = try values.decode(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encodeIfPresent(id, forKey: "id")
		try values.encode(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
	}
}
