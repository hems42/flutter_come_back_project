enum CoreLogLevelEnum {
  VERBOSE("verbose"),
   DEBUG("debug"),
  INFO("info"),
  WARN("warn"),
  ERROR("error"),
  TERRIBLE_FAILURE("terrible_failure"),
  NOTHING("nothing"),;

  final String levelName;
  const CoreLogLevelEnum(this.levelName);
  
}
