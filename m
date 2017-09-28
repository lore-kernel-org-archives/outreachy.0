X-GM-THRID: 6470825285154504704
Date: Thu, 28 Sep 2017 07:50:27 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <763e64e7-1e49-4462-8054-40aae481f5c3@googlegroups.com>
In-Reply-To: <20170928141045.nsmnz5dritfm54i6@phenom.ffwll.local>
References: <1506606282-628-1-git-send-email-harshasharmaiitr@gmail.com>
 <20170928141045.nsmnz5dritfm54i6@phenom.ffwll.local>
Subject: Re: [PATCH] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1146_1042671643.1506610228053"
X-Google-Token: ELOYtM4FBttDxAHGj5E0
X-Google-IP: 103.37.201.27

------=_Part_1146_1042671643.1506610228053
Content-Type: multipart/alternative; 
	boundary="----=_Part_1147_1882108283.1506610228055"

------=_Part_1147_1882108283.1506610228055
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, September 28, 2017 at 7:40:49 PM UTC+5:30, Daniel Vetter wrote:
>
> On Thu, Sep 28, 2017 at 07:14:42PM +0530, Harsha Sharma wrote: 
> > Replace instances of drm_framebuffer_reference/unreference() with 
> > *_get/put() suffixes and drm_dev_unref with *_put() suffix 
> > because get/put is shorter and consistent with the 
> > kernel use of *_get/put suffixes . 
>
> Since this is done with cocci it's good to reference or include the cocci 
> patch you've used in the commit message. 
>
> > Signed-off-by: Harsha Sharma <harshash...@gmail.com <javascript:>> 
>
> When submitting a driver patch, please make sure you also include driver 
> maintainers and driver-specific mailing lists, not just dri-devel. 
>
> scripts/get_maintainers.pl should help you with figuring these out. 
>
> Thanks, Daniel

Hi,
Thanks for your feedback.
I have actually tried several no. of times to run get_maintainers.pl for 
this patch but didn't got any result for just this patch so finally send it 
. Is there any other way to get list of maintainers and driver-specific 
mailing lists ?
I'll send another version for this patch.
Thanks a lot for your time.

Regards,
Harsha Sharma 

>
>
> > --- 
> >  drivers/gpu/drm/i915/i915_pci.c                    |  2 +- 
> >  drivers/gpu/drm/i915/intel_display.c               | 10 +++++----- 
> >  drivers/gpu/drm/i915/intel_fbdev.c                 |  4 ++-- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c   |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_evict.c    |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_object.c   |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_request.c  |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_vma.c          |  2 +- 
> >  drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c |  2 +- 
> >  10 files changed, 15 insertions(+), 15 deletions(-) 
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c 
> b/drivers/gpu/drm/i915/i915_pci.c 
> > index 09d97e0..2f106cc 100644 
> > --- a/drivers/gpu/drm/i915/i915_pci.c 
> > +++ b/drivers/gpu/drm/i915/i915_pci.c 
> > @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev) 
> >          struct drm_device *dev = pci_get_drvdata(pdev); 
> >   
> >          i915_driver_unload(dev); 
> > -        drm_dev_unref(dev); 
> > +        drm_dev_put(dev); 
> >  } 
> >   
> >  static int i915_pci_probe(struct pci_dev *pdev, const struct 
> pci_device_id *ent) 
> > diff --git a/drivers/gpu/drm/i915/intel_display.c 
> b/drivers/gpu/drm/i915/intel_display.c 
> > index f172755..92f8304 100644 
> > --- a/drivers/gpu/drm/i915/intel_display.c 
> > +++ b/drivers/gpu/drm/i915/intel_display.c 
> > @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >   
> >                  if (intel_plane_ggtt_offset(state) == 
> plane_config->base) { 
> >                          fb = c->primary->fb; 
> > -                        drm_framebuffer_reference(fb); 
> > +                        drm_framebuffer_get(fb); 
> >                          goto valid_fb; 
> >                  } 
> >          } 
> > @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >                            intel_crtc->pipe, PTR_ERR(intel_state->vma)); 
> >   
> >                  intel_state->vma = NULL; 
> > -                drm_framebuffer_unreference(fb); 
> > +                drm_framebuffer_put(fb); 
> >                  return; 
> >          } 
> >   
> > @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >          if (i915_gem_object_is_tiled(obj)) 
> >                  dev_priv->preserve_bios_swizzle = true; 
> >   
> > -        drm_framebuffer_reference(fb); 
> > +        drm_framebuffer_get(fb); 
> >          primary->fb = primary->state->fb = fb; 
> >          primary->crtc = primary->state->crtc = &intel_crtc->base; 
> >   
> > @@ -9847,7 +9847,7 @@ struct drm_framebuffer * 
> >          if (obj->base.size < mode->vdisplay * fb->pitches[0]) 
> >                  return NULL; 
> >   
> > -        drm_framebuffer_reference(fb); 
> > +        drm_framebuffer_get(fb); 
> >          return fb; 
> >  #else 
> >          return NULL; 
> > @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct 
> drm_connector *connector, 
> >          if (ret) 
> >                  goto fail; 
> >   
> > -        drm_framebuffer_unreference(fb); 
> > +        drm_framebuffer_put(fb); 
> >   
> >          ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode); 
> >          if (ret) 
> > diff --git a/drivers/gpu/drm/i915/intel_fbdev.c 
> b/drivers/gpu/drm/i915/intel_fbdev.c 
> > index 262e75c..1ff7149 100644 
> > --- a/drivers/gpu/drm/i915/intel_fbdev.c 
> > +++ b/drivers/gpu/drm/i915/intel_fbdev.c 
> > @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper 
> *helper, 
> >                                " releasing it\n", 
> >                                intel_fb->base.width, 
> intel_fb->base.height, 
> >                                sizes->fb_width, sizes->fb_height); 
> > -                drm_framebuffer_unreference(&intel_fb->base); 
> > +                drm_framebuffer_put(&intel_fb->base); 
> >                  intel_fb = ifbdev->fb = NULL; 
> >          } 
> >          if (!intel_fb || WARN_ON(!intel_fb->obj)) { 
> > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device 
> *dev, 
> >          ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8; 
> >          ifbdev->fb = fb; 
> >   
> > -        drm_framebuffer_reference(&ifbdev->fb->base); 
> > +        drm_framebuffer_put(&ifbdev->fb->base); 
> >   
> >          /* Final pass to check if any active pipes don't have fbs */ 
> >          for_each_crtc(dev, crtc) { 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > index 89dc25a..a7055b1 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void) 
> >   
> >          err = i915_subtests(tests, i915); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > index 5ea3732..75764fd 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > index 6b132ca..bc3c4a5 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > index 8f011c4..7bfd990 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > @@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void) 
> >   
> >          err = i915_subtests(tests, i915); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > index 6664cb2..8985578 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > @@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void) 
> >                  return -ENOMEM; 
> >   
> >          err = i915_subtests(tests, i915); 
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >   
> >          return err; 
> >  } 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c 
> b/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > index 2e86ec1..d8cc0a6 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > index 828904b..3c8bf44 100644 
> > --- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > +++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void) 
> >                  return -ENOMEM; 
> >   
> >          err = i915_subtests(tests, i915->engine[RCS]); 
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >   
> >          return err; 
> >  } 
> > -- 
> > 1.9.1 
> > 
>
> -- 
> Daniel Vetter 
> Software Engineer, Intel Corporation 
> http://blog.ffwll.ch 
>

On Thursday, September 28, 2017 at 7:40:49 PM UTC+5:30, Daniel Vetter wrote:
>
> On Thu, Sep 28, 2017 at 07:14:42PM +0530, Harsha Sharma wrote: 
> > Replace instances of drm_framebuffer_reference/unreference() with 
> > *_get/put() suffixes and drm_dev_unref with *_put() suffix 
> > because get/put is shorter and consistent with the 
> > kernel use of *_get/put suffixes . 
>
> Since this is done with cocci it's good to reference or include the cocci 
> patch you've used in the commit message. 
>
> > Signed-off-by: Harsha Sharma <harshash...@gmail.com <javascript:>> 
>
> When submitting a driver patch, please make sure you also include driver 
> maintainers and driver-specific mailing lists, not just dri-devel. 
>
> scripts/get_maintainers.pl should help you with figuring these out. 
>
> Thanks, Daniel 
>
> > --- 
> >  drivers/gpu/drm/i915/i915_pci.c                    |  2 +- 
> >  drivers/gpu/drm/i915/intel_display.c               | 10 +++++----- 
> >  drivers/gpu/drm/i915/intel_fbdev.c                 |  4 ++-- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c   |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_evict.c    |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_object.c   |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_gem_request.c  |  2 +- 
> >  drivers/gpu/drm/i915/selftests/i915_vma.c          |  2 +- 
> >  drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c |  2 +- 
> >  10 files changed, 15 insertions(+), 15 deletions(-) 
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c 
> b/drivers/gpu/drm/i915/i915_pci.c 
> > index 09d97e0..2f106cc 100644 
> > --- a/drivers/gpu/drm/i915/i915_pci.c 
> > +++ b/drivers/gpu/drm/i915/i915_pci.c 
> > @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev) 
> >          struct drm_device *dev = pci_get_drvdata(pdev); 
> >   
> >          i915_driver_unload(dev); 
> > -        drm_dev_unref(dev); 
> > +        drm_dev_put(dev); 
> >  } 
> >   
> >  static int i915_pci_probe(struct pci_dev *pdev, const struct 
> pci_device_id *ent) 
> > diff --git a/drivers/gpu/drm/i915/intel_display.c 
> b/drivers/gpu/drm/i915/intel_display.c 
> > index f172755..92f8304 100644 
> > --- a/drivers/gpu/drm/i915/intel_display.c 
> > +++ b/drivers/gpu/drm/i915/intel_display.c 
> > @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >   
> >                  if (intel_plane_ggtt_offset(state) == 
> plane_config->base) { 
> >                          fb = c->primary->fb; 
> > -                        drm_framebuffer_reference(fb); 
> > +                        drm_framebuffer_get(fb); 
> >                          goto valid_fb; 
> >                  } 
> >          } 
> > @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >                            intel_crtc->pipe, PTR_ERR(intel_state->vma)); 
> >   
> >                  intel_state->vma = NULL; 
> > -                drm_framebuffer_unreference(fb); 
> > +                drm_framebuffer_put(fb); 
> >                  return; 
> >          } 
> >   
> > @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, bool 
> rgb_order, bool alpha) 
> >          if (i915_gem_object_is_tiled(obj)) 
> >                  dev_priv->preserve_bios_swizzle = true; 
> >   
> > -        drm_framebuffer_reference(fb); 
> > +        drm_framebuffer_get(fb); 
> >          primary->fb = primary->state->fb = fb; 
> >          primary->crtc = primary->state->crtc = &intel_crtc->base; 
> >   
> > @@ -9847,7 +9847,7 @@ struct drm_framebuffer * 
> >          if (obj->base.size < mode->vdisplay * fb->pitches[0]) 
> >                  return NULL; 
> >   
> > -        drm_framebuffer_reference(fb); 
> > +        drm_framebuffer_get(fb); 
> >          return fb; 
> >  #else 
> >          return NULL; 
> > @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct 
> drm_connector *connector, 
> >          if (ret) 
> >                  goto fail; 
> >   
> > -        drm_framebuffer_unreference(fb); 
> > +        drm_framebuffer_put(fb); 
> >   
> >          ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode); 
> >          if (ret) 
> > diff --git a/drivers/gpu/drm/i915/intel_fbdev.c 
> b/drivers/gpu/drm/i915/intel_fbdev.c 
> > index 262e75c..1ff7149 100644 
> > --- a/drivers/gpu/drm/i915/intel_fbdev.c 
> > +++ b/drivers/gpu/drm/i915/intel_fbdev.c 
> > @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper 
> *helper, 
> >                                " releasing it\n", 
> >                                intel_fb->base.width, 
> intel_fb->base.height, 
> >                                sizes->fb_width, sizes->fb_height); 
> > -                drm_framebuffer_unreference(&intel_fb->base); 
> > +                drm_framebuffer_put(&intel_fb->base); 
> >                  intel_fb = ifbdev->fb = NULL; 
> >          } 
> >          if (!intel_fb || WARN_ON(!intel_fb->obj)) { 
> > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device 
> *dev, 
> >          ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8; 
> >          ifbdev->fb = fb; 
> >   
> > -        drm_framebuffer_reference(&ifbdev->fb->base); 
> > +        drm_framebuffer_put(&ifbdev->fb->base); 
> >   
> >          /* Final pass to check if any active pipes don't have fbs */ 
> >          for_each_crtc(dev, crtc) { 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > index 89dc25a..a7055b1 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c 
> > @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void) 
> >   
> >          err = i915_subtests(tests, i915); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > index 5ea3732..75764fd 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c 
> > @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > index 6b132ca..bc3c4a5 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
> > @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > index 8f011c4..7bfd990 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c 
> > @@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void) 
> >   
> >          err = i915_subtests(tests, i915); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> b/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > index 6664cb2..8985578 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c 
> > @@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void) 
> >                  return -ENOMEM; 
> >   
> >          err = i915_subtests(tests, i915); 
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >   
> >          return err; 
> >  } 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c 
> b/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > index 2e86ec1..d8cc0a6 100644 
> > --- a/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c 
> > @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void) 
> >          err = i915_subtests(tests, i915); 
> >          mutex_unlock(&i915->drm.struct_mutex); 
> >   
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >          return err; 
> >  } 
> >   
> > diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > index 828904b..3c8bf44 100644 
> > --- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > +++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c 
> > @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void) 
> >                  return -ENOMEM; 
> >   
> >          err = i915_subtests(tests, i915->engine[RCS]); 
> > -        drm_dev_unref(&i915->drm); 
> > +        drm_dev_put(&i915->drm); 
> >   
> >          return err; 
> >  } 
> > -- 
> > 1.9.1 
> > 
>
> -- 
> Daniel Vetter 
> Software Engineer, Intel Corporation 
> http://blog.ffwll.ch 
>

------=_Part_1147_1882108283.1506610228055
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, September 28, 2017 at 7:40:49 PM UTC+=
5:30, Daniel Vetter wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On T=
hu, Sep 28, 2017 at 07:14:42PM +0530, Harsha Sharma wrote:
<br>&gt; Replace instances of drm_framebuffer_reference/<wbr>unreference() =
with
<br>&gt; *_get/put() suffixes and drm_dev_unref with *_put() suffix
<br>&gt; because get/put is shorter and consistent with the
<br>&gt; kernel use of *_get/put suffixes .
<br>
<br>Since this is done with cocci it&#39;s good to reference or include the=
 cocci
<br>patch you&#39;ve used in the commit message.
<br>
<br>&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"TmKaTjnxBAAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">harshash...@gmail.com</a>&gt;
<br>
<br>When submitting a driver patch, please make sure you also include drive=
r
<br>maintainers and driver-specific mailing lists, not just dri-devel.
<br>
<br>scripts/<a href=3D"http://get_maintainers.pl" target=3D"_blank" rel=3D"=
nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dht=
tp%3A%2F%2Fget_maintainers.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF2DOq=
NORTh6GN9fU2WFtmAm0I64w&#39;;return true;" onclick=3D"this.href=3D&#39;http=
://www.google.com/url?q\x3dhttp%3A%2F%2Fget_maintainers.pl\x26sa\x3dD\x26sn=
tz\x3d1\x26usg\x3dAFQjCNF2DOqNORTh6GN9fU2WFtmAm0I64w&#39;;return true;">get=
_maintainers.pl</a> should help you with figuring these out.
<br>
<br>Thanks, Daniel</blockquote><div>Hi,</div><div>Thanks for your feedback.=
</div><div>I have actually tried several no. of times to run get_maintainer=
s.pl for this patch but didn&#39;t got any result for just this patch so fi=
nally send it . Is there any other way to get list of maintainers and drive=
r-specific mailing lists ?</div><div>I&#39;ll send another version for this=
 patch.</div><div>Thanks a lot for your time.</div><div><br></div><div>Rega=
rds,</div><div>Harsha Sharma=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-le=
ft: 1ex;">
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/gpu/drm/i915/i915_<wbr>pci.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/intel_<wbr>display.c =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 10 +++++-----
<br>&gt; =C2=A0drivers/gpu/drm/i915/intel_<wbr>fbdev.c =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A04 ++--
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c =C2=A0=
 | =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c =C2=A0 =
=C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c =C2=A0 =
=C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c =C2=A0=
 | =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c =C2=
=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c | =
=C2=A02 +-
<br>&gt; =C2=A010 files changed, 15 insertions(+), 15 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/gpu/drm/i915/i915_<wbr>pci.c b/drivers/gpu/dr=
m/i915/i915_<wbr>pci.c
<br>&gt; index 09d97e0..2f106cc 100644
<br>&gt; --- a/drivers/gpu/drm/i915/i915_<wbr>pci.c
<br>&gt; +++ b/drivers/gpu/drm/i915/i915_<wbr>pci.c
<br>&gt; @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pd=
ev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_d=
evice *dev =3D pci_get_drvdata(pdev);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i915_driver_=
unload(<wbr>dev);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(dev=
);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(dev);
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; =C2=A0static int i915_pci_probe(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
<br>&gt; diff --git a/drivers/gpu/drm/i915/intel_<wbr>display.c b/drivers/g=
pu/drm/i915/intel_<wbr>display.c
<br>&gt; index f172755..92f8304 100644
<br>&gt; --- a/drivers/gpu/drm/i915/intel_<wbr>display.c
<br>&gt; +++ b/drivers/gpu/drm/i915/intel_<wbr>display.c
<br>&gt; @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (intel_plane_ggtt_offset(<wbr>state)=
 =3D=3D plane_config-&gt;base) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0fb =3D c-&gt;primary-&gt;fb;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0drm_<wbr>framebuffer_reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0drm_<wbr>framebuffer_get(fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0goto valid_fb;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0intel_crtc-&gt;pipe, PTR_ERR(intel_state-&gt;vma));
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_state-&gt;<wbr>vma =3D NULL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_unreference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_put(fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0
<br>&gt; @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (i915_gem=
_object_is_tiled(obj)<wbr>)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_priv-&gt;<wbr>preserve_bios_swizzle=
 =3D true;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_g=
et(<wbr>fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0primary-&gt;=
fb =3D primary-&gt;state-&gt;fb =3D fb;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0primary-&gt;=
crtc =3D primary-&gt;state-&gt;crtc =3D &amp;intel_crtc-&gt;base;
<br>&gt; =C2=A0
<br>&gt; @@ -9847,7 +9847,7 @@ struct drm_framebuffer *
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (obj-&gt;=
base.size &lt; mode-&gt;vdisplay * fb-&gt;pitches[0])
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_g=
et(<wbr>fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return fb;
<br>&gt; =C2=A0#else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>&gt; @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(<wbr>struct=
 drm_connector *connector,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto fail;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>unreference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_p=
ut(<wbr>fb);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D drm_=
atomic_set_mode_for_crtc(&amp;<wbr>crtc_state-&gt;base, mode);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; diff --git a/drivers/gpu/drm/i915/intel_<wbr>fbdev.c b/drivers/gpu=
/drm/i915/intel_<wbr>fbdev.c
<br>&gt; index 262e75c..1ff7149 100644
<br>&gt; --- a/drivers/gpu/drm/i915/intel_<wbr>fbdev.c
<br>&gt; +++ b/drivers/gpu/drm/i915/intel_<wbr>fbdev.c
<br>&gt; @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper=
 *helper,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot; releasing it\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0intel_fb-&gt;base.width, intel_fb-&gt;base.he=
ight,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0sizes-&gt;fb_width, sizes-&gt;fb_height);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_unreference(&amp;<wbr=
>intel_fb-&gt;base);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_put(&amp;intel_fb-&gt=
;<wbr>base);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_fb =3D ifbdev-&gt;fb =3D NULL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!intel_f=
b || WARN_ON(!intel_fb-&gt;obj)) {
<br>&gt; @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_d=
evice *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ifbdev-&gt;p=
referred_bpp =3D fb-&gt;base.format-&gt;cpp[0] * 8;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ifbdev-&gt;f=
b =3D fb;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(&amp;ifbdev-&gt;fb-&gt;base);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_p=
ut(&amp;<wbr>ifbdev-&gt;fb-&gt;base);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Final pas=
s to check if any active pipes don&#39;t have fbs */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for_each_crt=
c(dev, crtc) {
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c=
 b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; index 89dc25a..a7055b1 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_<wbr>selftests(void)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c =
b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; index 5ea3732..75764fd 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(<wbr>void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c b/=
drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; index 6b132ca..bc3c4a5 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(<wbr>void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c=
 b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; index 8f011c4..7bfd990 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; @@ -586,7 +586,7 @@ int i915_gem_object_mock_<wbr>selftests(void)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.=
c b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; index 6664cb2..8985578 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; @@ -260,7 +260,7 @@ int i915_gem_request_mock_<wbr>selftests(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c b/driv=
ers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; index 2e86ec1..d8cc0a6 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs=
.c b/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; index 828904b..3c8bf44 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_<wbr>selftests(void=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915-&gt;engine[RCS]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>
<br>--=20
<br>Daniel Vetter
<br>Software Engineer, Intel Corporation
<br><a href=3D"http://blog.ffwll.ch" target=3D"_blank" rel=3D"nofollow" onm=
ousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fbl=
og.ffwll.ch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF40f-AlqBkF-zGr3KtTAUAI=
bzOAw&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/=
url?q\x3dhttp%3A%2F%2Fblog.ffwll.ch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjC=
NF40f-AlqBkF-zGr3KtTAUAIbzOAw&#39;;return true;">http://blog.ffwll.ch</a>
<br></blockquote><br>On Thursday, September 28, 2017 at 7:40:49 PM UTC+5:30=
, Daniel Vetter wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, =
Sep 28, 2017 at 07:14:42PM +0530, Harsha Sharma wrote:
<br>&gt; Replace instances of drm_framebuffer_reference/<wbr>unreference() =
with
<br>&gt; *_get/put() suffixes and drm_dev_unref with *_put() suffix
<br>&gt; because get/put is shorter and consistent with the
<br>&gt; kernel use of *_get/put suffixes .
<br>
<br>Since this is done with cocci it&#39;s good to reference or include the=
 cocci
<br>patch you&#39;ve used in the commit message.
<br>
<br>&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"TmKaTjnxBAAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">harshash...@gmail.com</a>&gt;
<br>
<br>When submitting a driver patch, please make sure you also include drive=
r
<br>maintainers and driver-specific mailing lists, not just dri-devel.
<br>
<br>scripts/<a href=3D"http://get_maintainers.pl" target=3D"_blank" rel=3D"=
nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dht=
tp%3A%2F%2Fget_maintainers.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF2DOq=
NORTh6GN9fU2WFtmAm0I64w&#39;;return true;" onclick=3D"this.href=3D&#39;http=
://www.google.com/url?q\x3dhttp%3A%2F%2Fget_maintainers.pl\x26sa\x3dD\x26sn=
tz\x3d1\x26usg\x3dAFQjCNF2DOqNORTh6GN9fU2WFtmAm0I64w&#39;;return true;">get=
_maintainers.pl</a> should help you with figuring these out.
<br>
<br>Thanks, Daniel
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/gpu/drm/i915/i915_<wbr>pci.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/intel_<wbr>display.c =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 10 +++++-----
<br>&gt; =C2=A0drivers/gpu/drm/i915/intel_<wbr>fbdev.c =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A04 ++--
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c =C2=A0=
 | =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c =C2=A0 =
=C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c =C2=A0 =
=C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c =C2=A0=
 | =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c =C2=
=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A02 +-
<br>&gt; =C2=A0drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c | =
=C2=A02 +-
<br>&gt; =C2=A010 files changed, 15 insertions(+), 15 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/gpu/drm/i915/i915_<wbr>pci.c b/drivers/gpu/dr=
m/i915/i915_<wbr>pci.c
<br>&gt; index 09d97e0..2f106cc 100644
<br>&gt; --- a/drivers/gpu/drm/i915/i915_<wbr>pci.c
<br>&gt; +++ b/drivers/gpu/drm/i915/i915_<wbr>pci.c
<br>&gt; @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pd=
ev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_d=
evice *dev =3D pci_get_drvdata(pdev);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i915_driver_=
unload(<wbr>dev);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(dev=
);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(dev);
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; =C2=A0static int i915_pci_probe(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
<br>&gt; diff --git a/drivers/gpu/drm/i915/intel_<wbr>display.c b/drivers/g=
pu/drm/i915/intel_<wbr>display.c
<br>&gt; index f172755..92f8304 100644
<br>&gt; --- a/drivers/gpu/drm/i915/intel_<wbr>display.c
<br>&gt; +++ b/drivers/gpu/drm/i915/intel_<wbr>display.c
<br>&gt; @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (intel_plane_ggtt_offset(<wbr>state)=
 =3D=3D plane_config-&gt;base) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0fb =3D c-&gt;primary-&gt;fb;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0drm_<wbr>framebuffer_reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0drm_<wbr>framebuffer_get(fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0goto valid_fb;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0intel_crtc-&gt;pipe, PTR_ERR(intel_state-&gt;vma));
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_state-&gt;<wbr>vma =3D NULL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_unreference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_put(fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0
<br>&gt; @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, =
bool rgb_order, bool alpha)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (i915_gem=
_object_is_tiled(obj)<wbr>)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_priv-&gt;<wbr>preserve_bios_swizzle=
 =3D true;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_g=
et(<wbr>fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0primary-&gt;=
fb =3D primary-&gt;state-&gt;fb =3D fb;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0primary-&gt;=
crtc =3D primary-&gt;state-&gt;crtc =3D &amp;intel_crtc-&gt;base;
<br>&gt; =C2=A0
<br>&gt; @@ -9847,7 +9847,7 @@ struct drm_framebuffer *
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (obj-&gt;=
base.size &lt; mode-&gt;vdisplay * fb-&gt;pitches[0])
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_g=
et(<wbr>fb);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return fb;
<br>&gt; =C2=A0#else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>&gt; @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(<wbr>struct=
 drm_connector *connector,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto fail;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>unreference(fb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_p=
ut(<wbr>fb);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D drm_=
atomic_set_mode_for_crtc(&amp;<wbr>crtc_state-&gt;base, mode);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; diff --git a/drivers/gpu/drm/i915/intel_<wbr>fbdev.c b/drivers/gpu=
/drm/i915/intel_<wbr>fbdev.c
<br>&gt; index 262e75c..1ff7149 100644
<br>&gt; --- a/drivers/gpu/drm/i915/intel_<wbr>fbdev.c
<br>&gt; +++ b/drivers/gpu/drm/i915/intel_<wbr>fbdev.c
<br>&gt; @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper=
 *helper,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot; releasing it\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0intel_fb-&gt;base.width, intel_fb-&gt;base.he=
ight,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0sizes-&gt;fb_width, sizes-&gt;fb_height);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_unreference(&amp;<wbr=
>intel_fb-&gt;base);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_<wbr>framebuffer_put(&amp;intel_fb-&gt=
;<wbr>base);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_fb =3D ifbdev-&gt;fb =3D NULL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!intel_f=
b || WARN_ON(!intel_fb-&gt;obj)) {
<br>&gt; @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_d=
evice *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ifbdev-&gt;p=
referred_bpp =3D fb-&gt;base.format-&gt;cpp[0] * 8;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ifbdev-&gt;f=
b =3D fb;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_<=
wbr>reference(&amp;ifbdev-&gt;fb-&gt;base);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_framebuffer_p=
ut(&amp;<wbr>ifbdev-&gt;fb-&gt;base);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Final pas=
s to check if any active pipes don&#39;t have fbs */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for_each_crt=
c(dev, crtc) {
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c=
 b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; index 89dc25a..a7055b1 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_dmabuf.c
<br>&gt; @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_<wbr>selftests(void)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c =
b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; index 5ea3732..75764fd 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_evict.c
<br>&gt; @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(<wbr>void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c b/=
drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; index 6b132ca..bc3c4a5 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_gtt.c
<br>&gt; @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(<wbr>void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c=
 b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; index 8f011c4..7bfd990 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_object.c
<br>&gt; @@ -586,7 +586,7 @@ int i915_gem_object_mock_<wbr>selftests(void)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.=
c b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; index 6664cb2..8985578 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_gem_request.c
<br>&gt; @@ -260,7 +260,7 @@ int i915_gem_request_mock_<wbr>selftests(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c b/driv=
ers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; index 2e86ec1..d8cc0a6 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/i915_vma.c
<br>&gt; @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock=
(&amp;i915-&gt;<wbr>drm.struct_mutex);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; diff --git a/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs=
.c b/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; index 828904b..3c8bf44 100644
<br>&gt; --- a/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; +++ b/drivers/gpu/drm/i915/<wbr>selftests/intel_breadcrumbs.c
<br>&gt; @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_<wbr>selftests(void=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D i915=
_subtests(tests, i915-&gt;engine[RCS]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_unref(&am=
p;i915-&gt;<wbr>drm);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drm_dev_put(&amp;=
i915-&gt;<wbr>drm);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>&gt; =C2=A0}
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>
<br>--=20
<br>Daniel Vetter
<br>Software Engineer, Intel Corporation
<br><a href=3D"http://blog.ffwll.ch" target=3D"_blank" rel=3D"nofollow" onm=
ousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fbl=
og.ffwll.ch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF40f-AlqBkF-zGr3KtTAUAI=
bzOAw&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/=
url?q\x3dhttp%3A%2F%2Fblog.ffwll.ch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjC=
NF40f-AlqBkF-zGr3KtTAUAIbzOAw&#39;;return true;">http://blog.ffwll.ch</a>
<br></blockquote></div>
------=_Part_1147_1882108283.1506610228055--

------=_Part_1146_1042671643.1506610228053--

