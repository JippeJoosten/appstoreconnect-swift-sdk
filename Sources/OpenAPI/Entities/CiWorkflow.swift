// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiWorkflow: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case ciWorkflows
	}

	public struct Attributes: Codable {
		public var name: String?
		public var description: String?
		public var branchStartCondition: CiBranchStartCondition?
		public var tagStartCondition: CiTagStartCondition?
		public var pullRequestStartCondition: CiPullRequestStartCondition?
		public var scheduledStartCondition: CiScheduledStartCondition?
		public var actions: [CiAction]?
		public var isEnabled: Bool?
		public var isLockedForEditing: Bool?
		public var isClean: Bool?
		public var containerFilePath: String?
		public var lastModifiedDate: Date?

		public init(name: String? = nil, description: String? = nil, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, actions: [CiAction]? = nil, isEnabled: Bool? = nil, isLockedForEditing: Bool? = nil, isClean: Bool? = nil, containerFilePath: String? = nil, lastModifiedDate: Date? = nil) {
			self.name = name
			self.description = description
			self.branchStartCondition = branchStartCondition
			self.tagStartCondition = tagStartCondition
			self.pullRequestStartCondition = pullRequestStartCondition
			self.scheduledStartCondition = scheduledStartCondition
			self.actions = actions
			self.isEnabled = isEnabled
			self.isLockedForEditing = isLockedForEditing
			self.isClean = isClean
			self.containerFilePath = containerFilePath
			self.lastModifiedDate = lastModifiedDate
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.description = try values.decodeIfPresent(String.self, forKey: "description")
			self.branchStartCondition = try values.decodeIfPresent(CiBranchStartCondition.self, forKey: "branchStartCondition")
			self.tagStartCondition = try values.decodeIfPresent(CiTagStartCondition.self, forKey: "tagStartCondition")
			self.pullRequestStartCondition = try values.decodeIfPresent(CiPullRequestStartCondition.self, forKey: "pullRequestStartCondition")
			self.scheduledStartCondition = try values.decodeIfPresent(CiScheduledStartCondition.self, forKey: "scheduledStartCondition")
			self.actions = try values.decodeIfPresent([CiAction].self, forKey: "actions")
			self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "isEnabled")
			self.isLockedForEditing = try values.decodeIfPresent(Bool.self, forKey: "isLockedForEditing")
			self.isClean = try values.decodeIfPresent(Bool.self, forKey: "clean")
			self.containerFilePath = try values.decodeIfPresent(String.self, forKey: "containerFilePath")
			self.lastModifiedDate = try values.decodeIfPresent(Date.self, forKey: "lastModifiedDate")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(description, forKey: "description")
			try values.encodeIfPresent(branchStartCondition, forKey: "branchStartCondition")
			try values.encodeIfPresent(tagStartCondition, forKey: "tagStartCondition")
			try values.encodeIfPresent(pullRequestStartCondition, forKey: "pullRequestStartCondition")
			try values.encodeIfPresent(scheduledStartCondition, forKey: "scheduledStartCondition")
			try values.encodeIfPresent(actions, forKey: "actions")
			try values.encodeIfPresent(isEnabled, forKey: "isEnabled")
			try values.encodeIfPresent(isLockedForEditing, forKey: "isLockedForEditing")
			try values.encodeIfPresent(isClean, forKey: "clean")
			try values.encodeIfPresent(containerFilePath, forKey: "containerFilePath")
			try values.encodeIfPresent(lastModifiedDate, forKey: "lastModifiedDate")
		}
	}

	public struct Relationships: Codable {
		public var product: Product?
		public var repository: Repository?
		public var xcodeVersion: XcodeVersion?
		public var macOsVersion: MacOsVersion?

		public struct Product: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case ciProducts
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Repository: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case scmRepositories
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct XcodeVersion: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case ciXcodeVersions
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct MacOsVersion: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case ciMacOsVersions
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(product: Product? = nil, repository: Repository? = nil, xcodeVersion: XcodeVersion? = nil, macOsVersion: MacOsVersion? = nil) {
			self.product = product
			self.repository = repository
			self.xcodeVersion = xcodeVersion
			self.macOsVersion = macOsVersion
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.product = try values.decodeIfPresent(Product.self, forKey: "product")
			self.repository = try values.decodeIfPresent(Repository.self, forKey: "repository")
			self.xcodeVersion = try values.decodeIfPresent(XcodeVersion.self, forKey: "xcodeVersion")
			self.macOsVersion = try values.decodeIfPresent(MacOsVersion.self, forKey: "macOsVersion")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(product, forKey: "product")
			try values.encodeIfPresent(repository, forKey: "repository")
			try values.encodeIfPresent(xcodeVersion, forKey: "xcodeVersion")
			try values.encodeIfPresent(macOsVersion, forKey: "macOsVersion")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
