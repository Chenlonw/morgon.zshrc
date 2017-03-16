try:    from rsf.cluster import *
except: from rsf.proj    import *

# default parameters
def param(par):
    if(not par.has_key('ot')):       par['ot']=0.
    if(not par.has_key('nt')):       par['nt']=1
    if(not par.has_key('dt')):       par['dt']=1.
    if(not par.has_key('lt')):       par['lt']='t'
    if(not par.has_key('ut')):       par['ut']='s'

    if(not par.has_key('nh')):       par['nh']=1
    if(not par.has_key('dh')):       par['dh']=10.
    if(not par.has_key('oh')):       par['oh']=-(par['nh'] - 1)/2*par['dh']
    if(not par.has_key('lh')):       par['lh']='h'
    if(not par.has_key('uh')):       par['uh']='km'
            
    if(not par.has_key('ox')):       par['ox']=0.
    if(not par.has_key('nx')):       par['nx']=1
    if(not par.has_key('dx')):       par['dx']=10.
    if(not par.has_key('lx')):       par['lx']='x'
    if(not par.has_key('ux')):       par['ux']='km'
    
    if(not par.has_key('oy')):       par['oy']=0.
    if(not par.has_key('ny')):       par['ny']=1
    if(not par.has_key('dy')):       par['dy']=1.
    if(not par.has_key('ly')):       par['ly']='y'    
    if(not par.has_key('uy')):       par['uy']='km'
     
    if(not par.has_key('oz')):       par['oz']=0.
    if(not par.has_key('nz')):       par['nz']=1
    if(not par.has_key('dz')):       par['dz']=1.
    if(not par.has_key('lz')):       par['lz']='z'
    if(not par.has_key('uz')):       par['uz']='km'

    if(not par.has_key('tmin')):     par['tmin']=par['ot']
    if(not par.has_key('tmax')):     par['tmax']=par['ot'] + (par['nt']-1) * par['dt']
    if(not par.has_key('xmin')):     par['xmin']=par['ox']
    if(not par.has_key('xmax')):     par['xmax']=par['ox'] + (par['nx']-1) * par['dx']
    if(not par.has_key('ymin')):     par['ymin']=par['oy']
    if(not par.has_key('ymax')):     par['ymax']=par['oy'] + (par['ny']-1) * par['dy']
    if(not par.has_key('zmin')):     par['zmin']=par['oz']
    if(not par.has_key('zmax')):     par['zmax']=par['oz'] + (par['nz']-1) * par['dz']

    if(not par.has_key('labelattr')): par['labelattr']=' labelsz=20 labelfat=15 titlesz=15 titlefat=3 '

    if(not par.has_key('ratio')):
        if(par['nx']==0.0):
            par['ratio']=1.0
        else:
            par['ratio']=1.0*par['nz']/par['nx']

# sfgrey in space (X) domain:
def Xgrey2d(custom,par):
    return '''
    grey 
    title=""
    pclip=100 gainpanel=a
    min1=%g max1=%g label1=%s unit1=%s
    min2=%g max2=%g label2=%s unit2=%s
    screenratio=%g %s
    ''' % (par['zmin'],par['zmax'],par['lz'],par['uz'],
           par['xmin'],par['xmax'],par['lx'],par['ux'],
           par['ratio'], par['labelattr']+custom)

# Modificable sfgrey in space (X) domain:
def XMgrey2d(custom,par):
    return '''
    put n1=%g n2=%g d1=%g d2=%g |
    grey title=""
    pclip=100 gainpanel=a
    label1=%s unit1=%s
    label2=%s unit2=%s
    screenratio=%g %s
    ''' % (par['nz'],par['nx'],par['dz'],par['dx'],
           par['lz'],par['uz'],
           par['lx'],par['ux'],
           par['ratio'], par['labelattr']+custom)

# Modificable sfgrey in Gather domain:
def GMgrey2d(custom,par):
    return '''
    put n1=%g n2=%g d1=%g d2=%g o1=%g o2=%g|
    grey title=""
    pclip=100 gainpanel=a
    label1=%s unit1=%s
    label2=%s unit2=%s
    screenratio=1.5 %s
    ''' % (par['nz'],par['nh'],par['dz'],par['dh'],par['oz'],par['oh'],
           par['lz'],par['uz'],
           par['lh'],par['uh'],
           par['labelattr']+custom)

# sfgrey in Gather domain:
def Ggrey2d(custom,par):
    return '''
    grey title=""
    pclip=100 gainpanel=a
    label1=%s unit1=%s
    label2=%s unit2=%s
    screenratio=1.5 %s
    ''' % (par['lz'],par['uz'],
           par['lh'],par['uh'],
           par['labelattr']+custom)
