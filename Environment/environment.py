class EnvironmentConfig:
    # Base URLs for different environments
    DEV_URL = "http://dev.example.com/login"
    STAGING_URL = "http://staging.example.com/login"
    PROD_URL = "http://example.com/login"

    # Method to get the URL based on the environment
    @staticmethod
    def get_url(env):
        if env == "dev":
            return EnvironmentConfig.DEV_URL
        elif env == "staging":
            return EnvironmentConfig.STAGING_URL
        elif env == "prod":
            return EnvironmentConfig.PROD_URL
        else:
            raise ValueError("Invalid environment specified") 