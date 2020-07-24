"""
对发送短信验证码进行节流限速
"""
from rest_framework.throttling import SimpleRateThrottle

class SMSCodeRateThrottle(SimpleRateThrottle):
    scope = 'smscode'

    def get_cache_key(self, request, view):
        telephone = request.query_params.get('tel')
        if telephone:
            ident = telephone
        else:
            ident = self.get_ident(request)

        return self.cache_format % {
            'scope': self.scope,
            'ident': ident
        }