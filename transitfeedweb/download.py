# source: http://stackoverflow.com/a/19352848/890242

def download(url, out=None):
    """
    this is not very pythonic -- but it works!
    (tried urllib, urllib2, httplib, wget etc. -- they all
    have problems with proper redirects and cookies support,
    whereas wget quite simply just does what it should). Couldn't
    care less.)
    """
    from sh import wget  # @UnresolvedImport
    print wget(url, '-O', out)
    return out 