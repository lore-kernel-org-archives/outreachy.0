X-GM-THRID: 7583885688832
X-Received: by 10.66.218.163 with SMTP id ph3mr35215155pac.46.1426083204006;
        Wed, 11 Mar 2015 07:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.101 with SMTP id e98ls404801iod.106.gmail; Wed, 11 Mar
 2015 07:13:23 -0700 (PDT)
X-Received: by 10.70.131.81 with SMTP id ok17mr37470285pdb.6.1426083203701;
        Wed, 11 Mar 2015 07:13:23 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id gu4si734762pac.1.2015.03.11.07.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 07:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id fp1so11580121pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 07:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=CohDxKT36Htyju3c9OpOFa7Jz1dO4y1xB+AjBYAhR0w=;
        b=sguSPQkUd4bD+PisHdo8KH4VmRXvp17v5CU6CeO5yGxr3r6SO7dCOWez0/2v2fJgPJ
         fuU4N3JKTewe/ogF7av11s3mcArRTYzqE5FtPrtxQQJEAi51wBfl4Jdpqump5xR4tbx0
         Ef3PJgpUdLOC4G4uKCc9yTIWVhx2XJAilMvjT42EX0odZspLeXFTVYtJGNcNsGthRpKw
         vPJVALtQ5a2WOxPwbI5RWziGgY8CrLywZOOSeoPpssqHVj00HQVPtHwHeedDadRM08nP
         BpRQdUYfLByV7RjY9g108Joa45O60GY7hPvT3d0+LKMWYUFmx2RWYzLELPYyJzZxjwCK
         hz8Q==
MIME-Version: 1.0
X-Received: by 10.70.88.137 with SMTP id bg9mr55533324pdb.92.1426083203335;
 Wed, 11 Mar 2015 07:13:23 -0700 (PDT)
Received: by 10.70.140.13 with HTTP; Wed, 11 Mar 2015 07:13:23 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503111508470.2639@hadrien>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
	<966f90ac2e20412dbf1299444d3e78b4a559b7e1.1426039205.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1503111508470.2639@hadrien>
Date: Wed, 11 Mar 2015 16:13:23 +0200
Message-ID: <CAHWJYFmRKY9b6YyKkAE4cKVCc7z2-ikcuS5kkqx7cizmJ0ucnA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 7/7] staging: sm750: Add space after comma
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

I noticed them too but had no time last night to finish the cleanup.
I will send a new patchset with all of the warnings fixed in a few hours.

Ioana

On Wed, Mar 11, 2015 at 4:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> If you want to do everything in this driver, I also noticed { that have no
> preceding space and { that are on the wrong line.
>
> julia
>
> On Wed, 11 Mar 2015, Ioana Ciornei wrote:
>
> > Place a whitespace after each comma in order to improve code readability and also
> > follow the Linux coding style.
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 310 ++++++++++++++++++++--------------------
> >  1 file changed, 155 insertions(+), 155 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > index 770b51c..010b849 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -33,15 +33,15 @@ int smi_indent = 0;
> >  /*
> >  #ifdef __BIG_ENDIAN
> >  ssize_t lynxfb_ops_write(struct fb_info *info, const char __user *buf,
> > -         size_t count, loff_t *ppos);
> > +                      size_t count, loff_t *ppos);
> >  ssize_t lynxfb_ops_read(struct fb_info *info, char __user *buf,
> > -                        size_t count, loff_t *ppos);
> > +                     size_t count, loff_t *ppos);
> >  #endif
> > - */
> > +*/
> >
> > -typedef void (*PROC_SPEC_SETUP)(struct lynx_share*,char *);
> > -typedef int (*PROC_SPEC_MAP)(struct lynx_share*,struct pci_dev*);
> > -typedef int (*PROC_SPEC_INITHW)(struct lynx_share*,struct pci_dev*);
> > +typedef void (*PROC_SPEC_SETUP)(struct lynx_share*, char *);
> > +typedef int (*PROC_SPEC_MAP)(struct lynx_share*, struct pci_dev*);
> > +typedef int (*PROC_SPEC_INITHW)(struct lynx_share*, struct pci_dev*);
> >
> >
> >  /* common var for all device */
> > @@ -50,7 +50,7 @@ static int g_noaccel = 0;
> >  #ifdef CONFIG_MTRR
> >  static int g_nomtrr  = 0;
> >  #endif
> > -static const char *g_fbmode[] = {NULL,NULL};
> > +static const char *g_fbmode[] = {NULL, NULL};
> >  static const char *g_def_fbmode = "800x600-16@60";
> >  static char *g_settings = NULL;
> >  static int g_dualview = 0;
> > @@ -58,12 +58,12 @@ static int g_dualview = 0;
> >  static char *g_option = NULL;
> >  #endif
> >
> > -/* if not use spin_lock,system will die if user load driver
> > +/* if not use spin_lock, system will die if user load driver
> >   * and immediatly unload driver frequently (dual)*/
> >  static inline void myspin_lock(spinlock_t *sl){
> >       struct lynx_share *share;
> >
> > -     share = container_of(sl,struct lynx_share,slock);
> > +     share = container_of(sl, struct lynx_share, slock);
> >       if(share->dual)
> >               spin_lock(sl);
> >  }
> > @@ -71,7 +71,7 @@ static inline void myspin_lock(spinlock_t *sl){
> >  static inline void myspin_unlock(spinlock_t *sl){
> >       struct lynx_share *share;
> >
> > -     share = container_of(sl,struct lynx_share,slock);
> > +     share = container_of(sl, struct lynx_share, slock);
> >       if(share->dual)
> >               spin_unlock(sl);
> >  }
> > @@ -98,13 +98,13 @@ static const struct fb_videomode lynx750_ext[] = {
> >
> >       /*      1280x720                [1.78:1]        */
> >       {NULL, 60,  1280,  720,  13426, 162, 86, 22, 1,  136, 3,
> > -     FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,FB_VMODE_NONINTERLACED},
> > +     FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED},
> >
> >       /* 1280x768@60 */
> > -     {NULL,60,1280,768,12579,192,64,20,3,128,7,
> > -     FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,FB_VMODE_NONINTERLACED},
> > +     {NULL, 60, 1280, 768, 12579, 192, 64, 20, 3, 128, 7,
> > +     FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED},
> >
> > -     {NULL,60,1360,768,11804,208,64,23,1,144,3,
> > +     {NULL, 60, 1360, 768, 11804, 208, 64, 23, 1, 144, 3,
> >       FB_SYNC_HOR_HIGH_ACT|FB_VMODE_NONINTERLACED},
> >
> >       /*      1360 x 768      [1.77083:1]     */
> > @@ -117,7 +117,7 @@ static const struct fb_videomode lynx750_ext[] = {
> >
> >       /*      1440 x 900              [16:10] */
> >       {NULL, 60, 1440, 900, 9392, 232, 80, 28, 1, 152, 3,
> > -     FB_SYNC_VERT_HIGH_ACT,FB_VMODE_NONINTERLACED},
> > +     FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED},
> >
> >       /*      1440x960                [15:10] */
> >       {NULL, 60, 1440, 960, 8733, 240, 88, 30, 1, 152, 3,
> > @@ -125,14 +125,14 @@ static const struct fb_videomode lynx750_ext[] = {
> >
> >       /*      1920x1080       [16:9]  */
> >       {NULL, 60, 1920, 1080, 6734, 148, 88, 41, 1, 44, 3,
> > -     FB_SYNC_VERT_HIGH_ACT,FB_VMODE_NONINTERLACED},
> > +     FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED},
> >  };
> >
> >
> >
> >
> >  /* no hardware cursor supported under version 2.6.10, kernel bug */
> > -static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
> > +static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
> >  {
> >       struct lynxfb_par  *par;
> >       struct lynxfb_crtc *crtc;
> > @@ -150,16 +150,16 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
> >
> >       cursor->disable(cursor);
> >       if(fbcursor->set & FB_CUR_SETSIZE)
> > -             cursor->setSize(cursor,fbcursor->image.width,fbcursor->image.height);
> > +             cursor->setSize(cursor, fbcursor->image.width, fbcursor->image.height);
> >
> >       if(fbcursor->set & FB_CUR_SETPOS){
> > -             cursor->setPos(cursor,fbcursor->image.dx - info->var.xoffset,
> > +             cursor->setPos(cursor, fbcursor->image.dx - info->var.xoffset,
> >                                                               fbcursor->image.dy - info->var.yoffset);
> >       }
> >
> >       if(fbcursor->set & FB_CUR_SETCMAP){
> >               /* get the 16bit color of kernel means */
> > -             u16 fg,bg;
> > +             u16 fg, bg;
> >
> >               fg = ((info->cmap.red[fbcursor->image.fg_color] & 0xf800))|
> >                               ((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5)|
> > @@ -169,7 +169,7 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
> >                               ((info->cmap.green[fbcursor->image.bg_color] & 0xfc00) >> 5)|
> >                               ((info->cmap.blue[fbcursor->image.bg_color] & 0xf800) >> 11);
> >
> > -             cursor->setColor(cursor,fg,bg);
> > +             cursor->setColor(cursor, fg, bg);
> >       }
> >
> >
> > @@ -187,11 +187,11 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
> >       return 0;
> >  }
> >
> > -static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* region)
> > +static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect* region)
> >  {
> >       struct lynxfb_par *par;
> >       struct lynx_share *share;
> > -     unsigned int base,pitch,Bpp,rop;
> > +     unsigned int base, pitch, Bpp, rop;
> >       u32 color;
> >
> >       if(info->state != FBINFO_STATE_RUNNING)
> > @@ -200,7 +200,7 @@ static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* r
> >       par = info->par;
> >       share = par->share;
> >
> > -     /* each time 2d function begin to work,below three variable always need
> > +     /* each time 2d function begin to work, below three variable always need
> >        * be set, seems we can put them together in some place  */
> >       base = par->crtc.oScreen;
> >       pitch = info->fix.line_length;
> > @@ -211,23 +211,23 @@ static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* r
> >
> >       myspin_lock(&share->slock);
> >       share->accel.de_fillrect(&share->accel,
> > -                                                     base,pitch,Bpp,
> > -                                                     region->dx,region->dy,
> > -                                                     region->width,region->height,
> > -                                                     color,rop);
> > +                                                     base, pitch, Bpp,
> > +                                                     region->dx, region->dy,
> > +                                                     region->width, region->height,
> > +                                                     color, rop);
> >       myspin_unlock(&share->slock);
> >  }
> >
> > -static void lynxfb_ops_copyarea(struct fb_info *info,const struct fb_copyarea *region)
> > +static void lynxfb_ops_copyarea(struct fb_info *info, const struct fb_copyarea *region)
> >  {
> >       struct lynxfb_par *par;
> >       struct lynx_share *share;
> > -     unsigned int base,pitch,Bpp;
> > +     unsigned int base, pitch, Bpp;
> >
> >       par = info->par;
> >       share = par->share;
> >
> > -     /* each time 2d function begin to work,below three variable always need
> > +     /* each time 2d function begin to work, below three variable always need
> >        * be set, seems we can put them together in some place  */
> >       base = par->crtc.oScreen;
> >       pitch = info->fix.line_length;
> > @@ -235,22 +235,22 @@ static void lynxfb_ops_copyarea(struct fb_info *info,const struct fb_copyarea *r
> >
> >       myspin_lock(&share->slock);
> >       share->accel.de_copyarea(&share->accel,
> > -                                                     base,pitch,region->sx,region->sy,
> > -                                                     base,pitch,Bpp,region->dx,region->dy,
> > -                                                     region->width,region->height,HW_ROP2_COPY);
> > +                                                     base, pitch, region->sx, region->sy,
> > +                                                     base, pitch, Bpp, region->dx, region->dy,
> > +                                                     region->width, region->height, HW_ROP2_COPY);
> >       myspin_unlock(&share->slock);
> >  }
> >
> > -static void lynxfb_ops_imageblit(struct fb_info *info,const struct fb_image *image)
> > +static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *image)
> >  {
> > -     unsigned int base,pitch,Bpp;
> > -     unsigned int fgcol,bgcol;
> > +     unsigned int base, pitch, Bpp;
> > +     unsigned int fgcol, bgcol;
> >       struct lynxfb_par *par;
> >       struct lynx_share *share;
> >
> >       par = info->par;
> >       share = par->share;
> > -     /* each time 2d function begin to work,below three variable always need
> > +     /* each time 2d function begin to work, below three variable always need
> >        * be set, seems we can put them together in some place  */
> >       base = par->crtc.oScreen;
> >       pitch = info->fix.line_length;
> > @@ -274,11 +274,11 @@ static void lynxfb_ops_imageblit(struct fb_info *info,const struct fb_image *ima
> >  _do_work:
> >       myspin_lock(&share->slock);
> >       share->accel.de_imageblit(&share->accel,
> > -                                     image->data,image->width>>3,0,
> > -                                     base,pitch,Bpp,
> > -                                     image->dx,image->dy,
> > -                                     image->width,image->height,
> > -                                     fgcol,bgcol,HW_ROP2_COPY);
> > +                                     image->data, image->width>>3, 0,
> > +                                     base, pitch, Bpp,
> > +                                     image->dx, image->dy,
> > +                                     image->width, image->height,
> > +                                     fgcol, bgcol, HW_ROP2_COPY);
> >       myspin_unlock(&share->slock);
> >  }
> >
> > @@ -336,7 +336,7 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
> >
> >               ret = pci_save_state(pdev);
> >               if(ret){
> > -                     pr_err("error:%d occured in pci_save_state\n",ret);
> > +                     pr_err("error:%d occured in pci_save_state\n", ret);
> >                       return ret;
> >               }
> >
> > @@ -345,9 +345,9 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
> >                       (*share->suspend)(share);
> >
> >               pci_disable_device(pdev);
> > -             ret = pci_set_power_state(pdev,pci_choose_state(pdev,mesg));
> > +             ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
> >               if(ret){
> > -                     pr_err("error:%d occured in pci_set_power_state\n",ret);
> > +                     pr_err("error:%d occured in pci_set_power_state\n", ret);
> >                       return ret;
> >               }
> >       }
> > @@ -382,11 +382,11 @@ static int lynxfb_ops_set_par(struct fb_info *info)
> >
> >       /* fix structur is not so FIX ... */
> >       line_length = var->xres_virtual * var->bits_per_pixel / 8;
> > -     line_length = PADDING(crtc->line_pad,line_length);
> > +     line_length = PADDING(crtc->line_pad, line_length);
> >       fix->line_length = line_length;
> > -     pr_err("fix->line_length = %d\n",fix->line_length);
> > +     pr_err("fix->line_length = %d\n", fix->line_length);
> >
> > -     /* var->red,green,blue,transp are need to be set by driver
> > +     /* var->red, green, blue, transp are need to be set by driver
> >        * and these data should be set before setcolreg routine
> >        * */
> >
> > @@ -434,9 +434,9 @@ static int lynxfb_ops_set_par(struct fb_info *info)
> >               pr_err("pixel bpp format not satisfied\n.");
> >               return ret;
> >       }
> > -     ret = crtc->proc_setMode(crtc,var,fix);
> > +     ret = crtc->proc_setMode(crtc, var, fix);
> >       if(!ret)
> > -             ret = output->proc_setMode(output,var,fix);
> > +             ret = output->proc_setMode(output, var, fix);
> >       return ret;
> >  }
> >  static inline unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
> > @@ -465,7 +465,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
> >       console_lock();
> >
> >       if((ret = pci_set_power_state(pdev, PCI_D0)) != 0){
> > -             pr_err("error:%d occured in pci_set_power_state\n",ret);
> > +             pr_err("error:%d occured in pci_set_power_state\n", ret);
> >               return ret;
> >       }
> >
> > @@ -473,7 +473,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
> >       if(pdev->dev.power.power_state.event != PM_EVENT_FREEZE){
> >               pci_restore_state(pdev);
> >               if ((ret = pci_enable_device(pdev)) != 0){
> > -                     pr_err("error:%d occured in pci_enable_device\n",ret);
> > +                     pr_err("error:%d occured in pci_enable_device\n", ret);
> >                       return ret;
> >               }
> >               pci_set_master(pdev);
> > @@ -481,7 +481,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
> >       if(share->resume)
> >               (*share->resume)(share);
> >
> > -     hw_sm750_inithw(share,pdev);
> > +     hw_sm750_inithw(share, pdev);
> >
> >
> >       info = share->fbinfo[0];
> > @@ -491,7 +491,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
> >               crtc = &par->crtc;
> >               cursor = &crtc->cursor;
> >               memset(cursor->vstart, 0x0, cursor->size);
> > -             memset(crtc->vScreen,0x0,crtc->vidmem_size);
> > +             memset(crtc->vScreen, 0x0, crtc->vidmem_size);
> >               lynxfb_ops_set_par(info);
> >               fb_set_suspend(info, 0);
> >       }
> > @@ -503,7 +503,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
> >               crtc = &par->crtc;
> >               cursor = &crtc->cursor;
> >               memset(cursor->vstart, 0x0, cursor->size);
> > -             memset(crtc->vScreen,0x0,crtc->vidmem_size);
> > +             memset(crtc->vScreen, 0x0, crtc->vidmem_size);
> >               lynxfb_ops_set_par(info);
> >               fb_set_suspend(info, 0);
> >       }
> > @@ -577,7 +577,7 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
> >       return 0;
> >  }
> >
> > -static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *info)
> > +static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
> >  {
> >       struct lynxfb_par *par;
> >       struct lynxfb_crtc *crtc;
> > @@ -606,7 +606,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *in
> >       case 32:
> >               break;
> >       default:
> > -             pr_err("bpp %d not supported\n",var->bits_per_pixel);
> > +             pr_err("bpp %d not supported\n", var->bits_per_pixel);
> >               ret = -EINVAL;
> >               goto exit;
> >       }
> > @@ -655,24 +655,24 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *in
> >       request = var->xres_virtual * (var->bits_per_pixel >> 3);
> >       /* defaulty crtc->channel go with par->index */
> >
> > -     request = PADDING(crtc->line_pad,request);
> > +     request = PADDING(crtc->line_pad, request);
> >       request = request * var->yres_virtual;
> >       if(crtc->vidmem_size < request){
> >               pr_err("not enough video memory for mode\n");
> >               return -ENOMEM;
> >       }
> >
> > -     ret = output->proc_checkMode(output,var);
> > +     ret = output->proc_checkMode(output, var);
> >       if(!ret)
> > -             ret = crtc->proc_checkMode(crtc,var);
> > +             ret = crtc->proc_checkMode(crtc, var);
> >  exit:
> >       return ret;
> >  }
> >
> >
> > -static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
> > -                                                                     unsigned green,unsigned blue,
> > -                                                                     unsigned transp,struct fb_info *info)
> > +static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
> > +                                                                     unsigned green, unsigned blue,
> > +                                                                     unsigned transp, struct fb_info *info)
> >  {
> >       struct lynxfb_par *par;
> >       struct lynxfb_crtc *crtc;
> > @@ -684,9 +684,9 @@ static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
> >       var = &info->var;
> >       ret = 0;
> >
> > -     //pr_debug("regno=%d,red=%d,green=%d,blue=%d\n",regno,red,green,blue);
> > +     //pr_debug("regno=%d, red=%d, green=%d, blue=%d\n", regno, red, green, blue);
> >       if(regno > 256){
> > -             pr_err("regno = %d\n",regno);
> > +             pr_err("regno = %d\n", regno);
> >               return -EINVAL;
> >       }
> >
> > @@ -698,7 +698,7 @@ static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
> >               red >>= 8;
> >               green >>= 8;
> >               blue >>= 8;
> > -             ret = crtc->proc_setColReg(crtc,regno,red,green,blue);
> > +             ret = crtc->proc_setColReg(crtc, regno, red, green, blue);
> >               goto exit;
> >       }
> >
> > @@ -711,9 +711,9 @@ static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
> >                  var->bits_per_pixel == 32 ||
> >                  var->bits_per_pixel == 24)
> >               {
> > -                     val = chan_to_field(red,&var->red);
> > -                     val |= chan_to_field(green,&var->green);
> > -                     val |= chan_to_field(blue,&var->blue);
> > +                     val = chan_to_field(red, &var->red);
> > +                     val |= chan_to_field(green, &var->green);
> > +                     val |= chan_to_field(blue, &var->blue);
> >                       par->pseudo_palette[regno] = val;
> >                       goto exit;
> >               }
> > @@ -725,15 +725,15 @@ exit:
> >       return ret;
> >  }
> >
> > -static int lynxfb_ops_blank(int blank,struct fb_info *info)
> > +static int lynxfb_ops_blank(int blank, struct fb_info *info)
> >  {
> >       struct lynxfb_par *par;
> >       struct lynxfb_output *output;
> >
> > -     pr_debug("blank = %d.\n",blank);
> > +     pr_debug("blank = %d.\n", blank);
> >       par = info->par;
> >       output = &par->output;
> > -     return output->proc_setBLANK(output,blank);
> > +     return output->proc_setBLANK(output, blank);
> >  }
> >
> >  static int sm750fb_set_drv(struct lynxfb_par *par)
> > @@ -747,7 +747,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> >       ret = 0;
> >
> >       share = par->share;
> > -     spec_share = container_of(share,struct sm750_share,share);
> > +     spec_share = container_of(share, struct sm750_share, share);
> >       output = &par->output;
> >       crtc = &par->crtc;
> >
> > @@ -796,7 +796,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> >               }else{
> >                       output->paths = sm750_crt;
> >                       crtc->channel = sm750_secondary;
> > -                     /* not consider of padding stuffs for oScreen,need fix*/
> > +                     /* not consider of padding stuffs for oScreen, need fix*/
> >                       crtc->oScreen = (share->vidmem_size >> 1);
> >                       crtc->vScreen = share->pvMem + crtc->oScreen;
> >               }
> > @@ -810,7 +810,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
> >               }else{
> >                       output->paths = sm750_crt;
> >                       crtc->channel = sm750_primary;
> > -                     /* not consider of padding stuffs for oScreen,need fix*/
> > +                     /* not consider of padding stuffs for oScreen, need fix*/
> >                       crtc->oScreen = (share->vidmem_size >> 1);
> >                       crtc->vScreen = share->pvMem + crtc->oScreen;
> >               }
> > @@ -828,7 +828,7 @@ static struct fb_ops lynxfb_ops={
> >       .fb_set_par = lynxfb_ops_set_par,
> >       .fb_setcolreg = lynxfb_ops_setcolreg,
> >       .fb_blank = lynxfb_ops_blank,
> > -     /*.fb_mmap = lynxfb_ops_mmap,*/
> > +     /*.fb_mmap = lynxfb_ops_mmap, */
> >       /* will be hooked by hardware */
> >       .fb_fillrect = cfb_fillrect,
> >       .fb_imageblit = cfb_imageblit,
> > @@ -851,7 +851,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >       const struct fb_videomode *pdb[] = {
> >               lynx750_ext, NULL, vesa_modes,
> >       };
> > -     int cdb[] = {ARRAY_SIZE(lynx750_ext),0,VESA_MODEDB_SIZE};
> > +     int cdb[] = {ARRAY_SIZE(lynx750_ext), 0, VESA_MODEDB_SIZE};
> >       static const char *mdb_desc[] = {
> >               "driver prepared modes",
> >               "kernel prepared default modedb",
> > @@ -861,7 +861,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >
> >       static const char *fixId[2]=
> >       {
> > -     "sm750_fb1","sm750_fb2",
> > +     "sm750_fb1", "sm750_fb2",
> >       };
> >
> >       int ret, line_length;
> > @@ -886,7 +886,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >       crtc->cursor.offset = crtc->oScreen + crtc->vidmem_size - 1024;
> >       crtc->cursor.mmio = share->pvReg + 0x800f0 + (int)crtc->channel * 0x140;
> >
> > -     pr_info("crtc->cursor.mmio = %p\n",crtc->cursor.mmio);
> > +     pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
> >       crtc->cursor.maxH = crtc->cursor.maxW = 64;
> >       crtc->cursor.size = crtc->cursor.maxH*crtc->cursor.maxW*2/8;
> >       crtc->cursor.disable = hw_cursor_disable;
> > @@ -924,8 +924,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >
> >       for(i=0;i<3;i++){
> >
> > -             ret = fb_find_mode(var,info,g_fbmode[index],
> > -                             pdb[i],cdb[i],NULL,8);
> > +             ret = fb_find_mode(var, info, g_fbmode[index],
> > +                             pdb[i], cdb[i], NULL, 8);
> >
> >               if(ret == 1){
> >                       pr_info("success! use specified mode:%s in %s\n",
> > @@ -933,7 +933,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >                                       mdb_desc[i]);
> >                       break;
> >               }else if(ret == 2){
> > -                     pr_warn("use specified mode:%s in %s,with an ignored refresh rate\n",
> > +                     pr_warn("use specified mode:%s in %s, with an ignored refresh rate\n",
> >                                       g_fbmode[index],
> >                                       mdb_desc[i]);
> >                       break;
> > @@ -943,7 +943,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >               }else if(ret == 4){
> >                       pr_warn("fall back to any valid mode\n");
> >               }else{
> > -                     pr_warn("ret = %d,fb_find_mode failed,with %s\n",ret,mdb_desc[i]);
> > +                     pr_warn("ret = %d, fb_find_mode failed, with %s\n", ret, mdb_desc[i]);
> >               }
> >       }
> >
> > @@ -957,8 +957,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >           xoffset=%d\n\
> >           yoffset=%d\n\
> >           bits_per_pixel=%d\n \
> > -         ...\n",var->xres,var->yres,var->xres_virtual,var->yres_virtual,
> > -         var->xoffset,var->yoffset,var->bits_per_pixel);
> > +         ...\n", var->xres, var->yres, var->xres_virtual, var->yres_virtual,
> > +         var->xoffset, var->yoffset, var->bits_per_pixel);
> >
> >       /* set par */
> >       par->info = info;
> > @@ -969,7 +969,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >
> >       info->pseudo_palette = &par->pseudo_palette[0];
> >       info->screen_base = crtc->vScreen;
> > -     pr_debug("screen_base vaddr = %p\n",info->screen_base);
> > +     pr_debug("screen_base vaddr = %p\n", info->screen_base);
> >       info->screen_size = line_length * var->yres_virtual;
> >       info->flags = FBINFO_FLAG_DEFAULT|0;
> >
> > @@ -981,11 +981,11 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >       fix->ywrapstep = crtc->ywrapstep;
> >       fix->accel = FB_ACCEL_SMI;
> >
> > -     strlcpy(fix->id,fixId[index],sizeof(fix->id));
> > +     strlcpy(fix->id, fixId[index], sizeof(fix->id));
> >
> >
> >       fix->smem_start = crtc->oScreen + share->vidmem_start;
> > -     pr_info("fix->smem_start = %lx\n",fix->smem_start);
> > +     pr_info("fix->smem_start = %lx\n", fix->smem_start);
> >       /* according to mmap experiment from user space application,
> >       * fix->mmio_len should not larger than virtual size
> >       * (xres_virtual x yres_virtual x ByPP)
> > @@ -993,13 +993,13 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >       * data into the bound over virtual size
> >       * */
> >       fix->smem_len = crtc->vidmem_size;
> > -     pr_info("fix->smem_len = %x\n",fix->smem_len);
> > +     pr_info("fix->smem_len = %x\n", fix->smem_len);
> >       info->screen_size = fix->smem_len;
> >       fix->line_length = line_length;
> >       fix->mmio_start = share->vidreg_start;
> > -     pr_info("fix->mmio_start = %lx\n",fix->mmio_start);
> > +     pr_info("fix->mmio_start = %lx\n", fix->mmio_start);
> >       fix->mmio_len = share->vidreg_size;
> > -     pr_info("fix->mmio_len = %x\n",fix->mmio_len);
> > +     pr_info("fix->mmio_len = %x\n", fix->mmio_len);
> >       switch(var->bits_per_pixel) {
> >       case 8:
> >               fix->visual = FB_VISUAL_PSEUDOCOLOR;
> > @@ -1015,29 +1015,29 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >       var->accel_flags = 0;
> >       var->vmode = FB_VMODE_NONINTERLACED;
> >
> > -     pr_debug("#1 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
> > -         info->cmap.start,info->cmap.len,
> > -         info->cmap.red,info->cmap.green,info->cmap.blue,
> > +     pr_debug("#1 show info->cmap : \nstart=%d, len=%d, red=%p, green=%p, blue=%p, transp=%p\n",
> > +         info->cmap.start, info->cmap.len,
> > +         info->cmap.red, info->cmap.green, info->cmap.blue,
> >           info->cmap.transp);
> >
> > -     if((ret = fb_alloc_cmap(&info->cmap,256,0)) < 0) {
> > +     if((ret = fb_alloc_cmap(&info->cmap, 256, 0)) < 0) {
> >               pr_err("Could not allcate memory for cmap.\n");
> >               goto exit;
> >       }
> >
> > -     pr_debug("#2 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
> > -         info->cmap.start,info->cmap.len,
> > -         info->cmap.red,info->cmap.green,info->cmap.blue,
> > +     pr_debug("#2 show info->cmap : \nstart=%d, len=%d, red=%p, green=%p, blue=%p, transp=%p\n",
> > +         info->cmap.start, info->cmap.len,
> > +         info->cmap.red, info->cmap.green, info->cmap.blue,
> >           info->cmap.transp);
> >
> >  exit:
> > -     lynxfb_ops_check_var(var,info);
> > +     lynxfb_ops_check_var(var, info);
> >       //    lynxfb_ops_set_par(info);
> >       return ret;
> >  }
> >
> >  /*   chip specific g_option configuration routine */
> > -static void sm750fb_setup(struct lynx_share *share,char *src)
> > +static void sm750fb_setup(struct lynx_share *share, char *src)
> >  {
> >       struct sm750_share *spec_share;
> >       char *opt;
> > @@ -1048,7 +1048,7 @@ static void sm750fb_setup(struct lynx_share *share,char *src)
> >       int swap;
> >
> >
> > -     spec_share = container_of(share,struct sm750_share,share);
> > +     spec_share = container_of(share, struct sm750_share, share);
> >  #ifdef CAP_EXPENSIION
> >       exp_res = NULL;
> >  #endif
> > @@ -1069,44 +1069,44 @@ static void sm750fb_setup(struct lynx_share *share,char *src)
> >               goto NO_PARAM;
> >       }
> >
> > -     while((opt = strsep(&src,":")) != NULL && *opt != NULL) {
> > -             pr_err("opt=%s\n",opt);
> > -             pr_err("src=%s\n",src);
> > +     while((opt = strsep(&src, ":")) != NULL && *opt != NULL) {
> > +             pr_err("opt=%s\n", opt);
> > +             pr_err("src=%s\n", src);
> >
> > -             if(!strncmp(opt,"swap",strlen("swap")))
> > +             if(!strncmp(opt, "swap", strlen("swap")))
> >                       swap = 1;
> > -             else if(!strncmp(opt,"nocrt",strlen("nocrt")))
> > +             else if(!strncmp(opt, "nocrt", strlen("nocrt")))
> >                       spec_share->state.nocrt = 1;
> > -             else if(!strncmp(opt,"36bit",strlen("36bit")))
> > +             else if(!strncmp(opt, "36bit", strlen("36bit")))
> >                       spec_share->state.pnltype = sm750_doubleTFT;
> > -             else if(!strncmp(opt,"18bit",strlen("18bit")))
> > +             else if(!strncmp(opt, "18bit", strlen("18bit")))
> >                       spec_share->state.pnltype = sm750_dualTFT;
> > -             else if(!strncmp(opt,"24bit",strlen("24bit")))
> > +             else if(!strncmp(opt, "24bit", strlen("24bit")))
> >                       spec_share->state.pnltype = sm750_24TFT;
> >  #ifdef CAP_EXPANSION
> > -             else if(!strncmp(opt,"exp:",strlen("exp:")))
> > +             else if(!strncmp(opt, "exp:", strlen("exp:")))
> >                       exp_res = opt + strlen("exp:");
> >  #endif
> > -             else if(!strncmp(opt,"nohwc0",strlen("nohwc0")))
> > +             else if(!strncmp(opt, "nohwc0", strlen("nohwc0")))
> >                       g_hwcursor &= ~0x1;
> > -             else if(!strncmp(opt,"nohwc1",strlen("nohwc1")))
> > +             else if(!strncmp(opt, "nohwc1", strlen("nohwc1")))
> >                       g_hwcursor &= ~0x2;
> > -             else if(!strncmp(opt,"nohwc",strlen("nohwc")))
> > +             else if(!strncmp(opt, "nohwc", strlen("nohwc")))
> >                       g_hwcursor = 0;
> >               else {
> >                       if(!g_fbmode[0]){
> >                               g_fbmode[0] = opt;
> > -                             pr_info("find fbmode0 : %s\n",g_fbmode[0]);
> > +                             pr_info("find fbmode0 : %s\n", g_fbmode[0]);
> >                       }else if(!g_fbmode[1]){
> >                               g_fbmode[1] = opt;
> > -                             pr_info("find fbmode1 : %s\n",g_fbmode[1]);
> > +                             pr_info("find fbmode1 : %s\n", g_fbmode[1]);
> >                       }else{
> >                               pr_warn("How many view you wann set?\n");
> >                       }
> >               }
> >       }
> >  #ifdef CAP_EXPANSION
> > -     if(getExpRes(exp_res,&spec_share->state.xLCD,&spec_share->state.yLCD)) {
> > +     if(getExpRes(exp_res, &spec_share->state.xLCD, &spec_share->state.yLCD)) {
> >               /* seems exp_res is not valid*/
> >               spec_share->state.xLCD = spec_share->state.yLCD = 0;
> >       }
> > @@ -1136,7 +1136,7 @@ NO_PARAM:
> >  static int lynxfb_pci_probe(struct pci_dev *pdev,
> >               const struct pci_device_id *ent)
> >  {
> > -     struct fb_info *info[] = {NULL,NULL};
> > +     struct fb_info *info[] = {NULL, NULL};
> >       struct lynx_share *share = NULL;
> >
> >       struct sm750_share *spec_share = NULL;
> > @@ -1152,9 +1152,9 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >
> >       /* though offset of share in sm750_share is 0,
> >        * we use this marcro as the same */
> > -     spec_offset = offsetof(struct sm750_share,share);
> > +     spec_offset = offsetof(struct sm750_share, share);
> >
> > -     spec_share = kzalloc(sizeof(*spec_share),GFP_KERNEL);
> > +     spec_share = kzalloc(sizeof(*spec_share), GFP_KERNEL);
> >       if(!spec_share){
> >               pr_err("Could not allocate memory for share.\n");
> >               goto err_share;
> > @@ -1166,7 +1166,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >       share->devid = pdev->device;
> >       share->revid = pdev->revision;
> >
> > -     pr_info("share->revid = %02x\n",share->revid);
> > +     pr_info("share->revid = %02x\n", share->revid);
> >       share->pdev = pdev;
> >  #ifdef CONFIG_MTRR
> >       share->mtrr_off = g_nomtrr;
> > @@ -1180,7 +1180,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >       if(!share->accel_off){
> >               /* hook deInit and 2d routines, notes that below hw_xxx
> >                * routine can work on most of lynx chips
> > -              * if some chip need specific function,please hook it in smXXX_set_drv
> > +              * if some chip need specific function, please hook it in smXXX_set_drv
> >                * routine */
> >               share->accel.de_init = hw_de_init;
> >               share->accel.de_fillrect = hw_fillrect;
> > @@ -1192,10 +1192,10 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >       }
> >
> >       /* call chip specific setup routine  */
> > -     sm750fb_setup(share,g_settings);
> > +     sm750fb_setup(share, g_settings);
> >
> >       /* call chip specific mmap routine */
> > -     if(hw_sm750_map(share,pdev)){
> > +     if(hw_sm750_map(share, pdev)){
> >               pr_err("Memory map failed\n");
> >               goto err_map;
> >       }
> > @@ -1205,7 +1205,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >               pr_info("enable mtrr\n");
> >               share->mtrr.vram = mtrr_add(share->vidmem_start,
> >                               share->vidmem_size,
> > -                             MTRR_TYPE_WRCOMB,1);
> > +                             MTRR_TYPE_WRCOMB, 1);
> >
> >               if(share->mtrr.vram < 0){
> >                       /* don't block driver with the failure of MTRR */
> > @@ -1217,22 +1217,22 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
> >       }
> >  #endif
> >
> > -     memset(share->pvMem,0,share->vidmem_size);
> > +     memset(share->pvMem, 0, share->vidmem_size);
> >
> > -     pr_info("sm%3x mmio address = %p\n",share->devid,share->pvReg);
> > +     pr_info("sm%3x mmio address = %p\n", share->devid, share->pvReg);
> >
> > -     pci_set_drvdata(pdev,share);
> > +     pci_set_drvdata(pdev, share);
> >
> >       /* call chipInit routine */
> > -     hw_sm750_inithw(share,pdev);
> > +     hw_sm750_inithw(share, pdev);
> >
> >       /* allocate frame buffer info structor according to g_dualview */
> >               fbidx = 0;
> >  ALLOC_FB:
> > -             info[fbidx] = framebuffer_alloc(sizeof(struct lynxfb_par),&pdev->dev);
> > +             info[fbidx] = framebuffer_alloc(sizeof(struct lynxfb_par), &pdev->dev);
> >               if(!info[fbidx])
> >               {
> > -                     pr_err("Could not allocate framebuffer #%d.\n",fbidx);
> > +                     pr_err("Could not allocate framebuffer #%d.\n", fbidx);
> >                       if(fbidx == 0)
> >                               goto err_info0_alloc;
> >                       else
> > @@ -1242,14 +1242,14 @@ ALLOC_FB:
> >               {
> >                       struct lynxfb_par *par;
> >
> > -                     pr_info("framebuffer #%d alloc okay\n",fbidx);
> > +                     pr_info("framebuffer #%d alloc okay\n", fbidx);
> >                       share->fbinfo[fbidx] = info[fbidx];
> >                       par = info[fbidx]->par;
> >                       par->share = share;
> >
> >                       /* set fb_info structure */
> > -                     if(lynxfb_set_fbinfo(info[fbidx],fbidx)){
> > -                             pr_err("Failed to initial fb_info #%d.\n",fbidx);
> > +                     if(lynxfb_set_fbinfo(info[fbidx], fbidx)){
> > +                             pr_err("Failed to initial fb_info #%d.\n", fbidx);
> >                               if(fbidx == 0)
> >                                       goto err_info0_set;
> >                               else
> > @@ -1257,17 +1257,17 @@ ALLOC_FB:
> >                       }
> >
> >                       /* register frame buffer*/
> > -                     pr_info("Ready to register framebuffer #%d.\n",fbidx);
> > +                     pr_info("Ready to register framebuffer #%d.\n", fbidx);
> >                       int errno = register_framebuffer(info[fbidx]);
> >
> >                       if (errno < 0) {
> > -                             pr_err("Failed to register fb_info #%d. err %d\n",fbidx, errno);
> > +                             pr_err("Failed to register fb_info #%d. err %d\n", fbidx, errno);
> >                               if(fbidx == 0)
> >                                       goto err_register0;
> >                               else
> >                                       goto err_register1;
> >                       }
> > -                     pr_info("Accomplished register framebuffer #%d.\n",fbidx);
> > +                     pr_info("Accomplished register framebuffer #%d.\n", fbidx);
> >               }
> >
> >               /* no dual view by far */
> > @@ -1319,16 +1319,16 @@ static void __exit lynxfb_pci_remove(struct pci_dev *pdev)
> >       }
> >  #ifdef CONFIG_MTRR
> >       if(share->mtrr.vram_added)
> > -             mtrr_del(share->mtrr.vram,share->vidmem_start,share->vidmem_size);
> > +             mtrr_del(share->mtrr.vram, share->vidmem_start, share->vidmem_size);
> >  #endif
> >       //      pci_release_regions(pdev);
> >
> >       iounmap(share->pvReg);
> >       iounmap(share->pvMem);
> > -     spec_share = container_of(share,struct sm750_share,share);
> > +     spec_share = container_of(share, struct sm750_share, share);
> >       kfree(g_settings);
> >       kfree(spec_share);
> > -     pci_set_drvdata(pdev,NULL);
> > +     pci_set_drvdata(pdev, NULL);
> >  }
> >
> >  static int __init lynxfb_setup(char *options)
> > @@ -1342,38 +1342,38 @@ static int __init lynxfb_setup(char *options)
> >               return 0;
> >       }
> >
> > -     pr_info("options:%s\n",options);
> > +     pr_info("options:%s\n", options);
> >
> >       len = strlen(options) + 1;
> > -     g_settings = kmalloc(len,GFP_KERNEL);
> > +     g_settings = kmalloc(len, GFP_KERNEL);
> >       if(!g_settings)
> >               return -ENOMEM;
> >
> > -     memset(g_settings,0,len);
> > +     memset(g_settings, 0, len);
> >       tmp = g_settings;
> >
> >       /*      Notes:
> > -             char * strsep(char **s,const char * ct);
> > +             char * strsep(char **s, const char * ct);
> >               @s: the string to be searched
> >               @ct :the characters to search for
> >
> >               strsep() updates @options to pointer after the first found token
> >               it also returns the pointer ahead the token.
> >               */
> > -     while((opt = strsep(&options,":"))!=NULL)
> > +     while((opt = strsep(&options, ":"))!=NULL)
> >       {
> >               /* options that mean for any lynx chips are configured here */
> > -             if(!strncmp(opt,"noaccel",strlen("noaccel")))
> > +             if(!strncmp(opt, "noaccel", strlen("noaccel")))
> >                       g_noaccel = 1;
> >  #ifdef CONFIG_MTRR
> > -             else if(!strncmp(opt,"nomtrr",strlen("nomtrr")))
> > +             else if(!strncmp(opt, "nomtrr", strlen("nomtrr")))
> >                       g_nomtrr = 1;
> >  #endif
> > -             else if(!strncmp(opt,"dual",strlen("dual")))
> > +             else if(!strncmp(opt, "dual", strlen("dual")))
> >                       g_dualview = 1;
> >               else
> >               {
> > -                     strcat(tmp,opt);
> > +                     strcat(tmp, opt);
> >                       tmp += strlen(opt);
> >                       if(options != NULL)
> >                               *tmp++ = ':';
> > @@ -1383,16 +1383,16 @@ static int __init lynxfb_setup(char *options)
> >       }
> >
> >       /* misc g_settings are transport to chip specific routines */
> > -     pr_info("parameter left for chip specific analysis:%s\n",g_settings);
> > +     pr_info("parameter left for chip specific analysis:%s\n", g_settings);
> >       return 0;
> >  }
> >
> >  static struct pci_device_id smi_pci_table[] = {
> >       { PCI_DEVICE(0x126f, 0x0750), },
> > -     {0,}
> > +     {0, }
> >  };
> >
> > -MODULE_DEVICE_TABLE(pci,smi_pci_table);
> > +MODULE_DEVICE_TABLE(pci, smi_pci_table);
> >
> >  static struct pci_driver lynxfb_driver = {
> >       .name =         "sm750fb",
> > @@ -1414,7 +1414,7 @@ static int __init lynxfb_init(void)
> >  #ifdef MODULE
> >       option = g_option;
> >  #else
> > -     if(fb_get_options("sm750fb",&option))
> > +     if(fb_get_options("sm750fb", &option))
> >               return -ENODEV;
> >  #endif
> >
> > @@ -1430,7 +1430,7 @@ static void __exit lynxfb_exit(void)
> >  }
> >  module_exit(lynxfb_exit);
> >
> > -module_param(g_option,charp,S_IRUGO);
> > +module_param(g_option, charp, S_IRUGO);
> >
> >  MODULE_PARM_DESC(g_option,
> >               "\n\t\tCommon options:\n"
> > @@ -1439,7 +1439,7 @@ MODULE_PARM_DESC(g_option,
> >               "\t\tdualview:dual frame buffer feature enabled\n"
> >               "\t\tnohwc:disable hardware cursor\n"
> >               "\t\tUsual example:\n"
> > -             "\t\tinsmod ./sm750fb.ko g_option=\"noaccel,nohwc,1280x1024-8@60\"\n"
> > +             "\t\tinsmod ./sm750fb.ko g_option=\"noaccel, nohwc, 1280x1024-8@60\"\n"
> >               );
> >
> >  MODULE_AUTHOR("monk liu <monk.liu@siliconmotion.com>");
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/966f90ac2e20412dbf1299444d3e78b4a559b7e1.1426039205.git.ciorneiioana%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >




-- 
Ioana Ciornei
Facultatea de Automatica si Calculatoare, UPB
Tel. 0753 861 668

