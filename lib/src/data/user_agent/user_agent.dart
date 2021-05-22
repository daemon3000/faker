/// data based on: https://github.com/skratchdot/random-useragent
class UserAgents {
  List<UserAgent> userAgents;

  UserAgents(this.userAgents);

  UserAgents.fromJson(Map<String, dynamic> json):
    userAgents = [] 
  {
    if(json['userAgents'] != null) {
      json['userAgents'].forEach((v) {
        userAgents.add(UserAgent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() => {
    'userAgents': this.userAgents.map((v) => v.toJson()).toList()
  };
}

class UserAgent {
  String folder;
  String description;
  String userAgent;
  String appCodename;
  String appName;
  String appVersion;
  String platform;
  String vendor;
  String vendorSub;
  String browserName;
  String browserMajor;
  String browserVersion;
  String deviceModel;
  String deviceType;
  String deviceVendor;
  String engineName;
  String engineVersion;
  String osName;
  String osVersion;
  String cpuArchitecture;

  UserAgent({
    required this.folder,
    required this.description,
    required this.userAgent,
    required this.appCodename,
    required this.appName,
    required this.appVersion,
    required this.platform,
    required this.vendor,
    required this.vendorSub,
    required this.browserName,
    required this.browserMajor,
    required this.browserVersion,
    required this.deviceModel,
    required this.deviceType,
    required this.deviceVendor,
    required this.engineName,
    required this.engineVersion,
    required this.osName,
    required this.osVersion,
    required this.cpuArchitecture
  });

  UserAgent.fromJson(Map<String, dynamic> json):
    folder = json['folder'],
    description = json['description'],
    userAgent = json['userAgent'],
    appCodename = json['appCodename'],
    appName = json['appName'],
    appVersion = json['appVersion'],
    platform = json['platform'],
    vendor = json['vendor'],
    vendorSub = json['vendorSub'],
    browserName = json['browserName'],
    browserMajor = json['browserMajor'],
    browserVersion = json['browserVersion'],
    deviceModel = json['deviceModel'],
    deviceType = json['deviceType'],
    deviceVendor = json['deviceVendor'],
    engineName = json['engineName'],
    engineVersion = json['engineVersion'],
    osName = json['osName'],
    osVersion = json['osVersion'],
    cpuArchitecture = json['cpuArchitecture'];

  Map<String, dynamic> toJson() => {
    'folder': this.folder,
    'description': this.description,
    'userAgent': this.userAgent,
    'appCodename': this.appCodename,
    'appName': this.appName,
    'appVersion': this.appVersion,
    'platform': this.platform,
    'vendor': this.vendor,
    'vendorSub': this.vendorSub,
    'browserName': this.browserName,
    'browserMajor': this.browserMajor,
    'browserVersion': this.browserVersion,
    'deviceModel': this.deviceModel,
    'deviceType': this.deviceType,
    'deviceVendor': this.deviceVendor,
    'engineName': this.engineName,
    'engineVersion': this.engineVersion,
    'osName': this.osName,
    'osVersion': this.osVersion,
    'cpuArchitecture': this.cpuArchitecture,
  };
}
