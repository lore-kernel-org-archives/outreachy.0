X-GM-THRID: 6473408777724887040
X-Received: by 10.99.185.86 with SMTP id v22mr26216pgo.76.1507867978466;
        Thu, 12 Oct 2017 21:12:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.74.196 with SMTP id c4ls1428976pgu.28.gmail; Thu, 12 Oct
 2017 21:12:57 -0700 (PDT)
X-Received: by 10.98.238.16 with SMTP id e16mr24569pfi.20.1507867977448;
        Thu, 12 Oct 2017 21:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507867977; cv=none;
        d=google.com; s=arc-20160816;
        b=b26Gsi+5DN6vZM4jT1qAFAY7jukqCg+MuDuoQpXxYGScu2vEbh41W41FYRTz1AAklB
         YsZUAipZfHyzEcdq2yGsh9Wq5wNGat3uX6Cu1f9CgF3+wSjRgnIDvnXj02z/mwtDrhNg
         ASki6hxhQ8fSbowrge0Q8ED2blFGdqnzWJy5xYHAVRNv2+Wnq1XGQXbSz9f/Gm9mpwqp
         y6uaIp4dRUq3SFGZ17PCHl0i43HI3OzD2N/KPBYOn0xwVQ2S7QqxyQqthyppB9mb1q1W
         o33b2weTnJarkXF8YVJH4/E9DtAm0vxXPoR4Ow2gjvrR1VI8K2AKOwXackF18XWRBMX9
         45FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=c9A8DcRXXDS2X+V5r1hiGWuN8SdGbaVAfLdGl8OLJd8=;
        b=jBrC1EmFoXIDul24UZPG+WocipyEe265/SPkMVzoJXGU8FLsBr+Cu9IwhXLjbYTpUp
         Swg0+lvZZHJ1onCicL6ztQCvwQbD23ffiiQFV/jWncuF74NbqzCgMpMfN4g6cEk3TY5d
         e3dETgLEbOKyDcAF26poD2zEdwcvRlTjZC6ylQPS2+6nSkKGSiIQWY0TuWkiVuRh+RTn
         8cWEzE48Ni1MUJ51ZmQpUUljmn8v0EZD7RFMGsd/F/khb15bE9TD6nTvYytghdKmNC4R
         95khYuc65jVpvO8HaQ65YSoRA5ZU33+zHdZSuSsn3XSEbnKPjbEqGNf9ei2oyVSjfdhS
         jFmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OH2K0rFk;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id w5si3157pfw.3.2017.10.12.21.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 21:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OH2K0rFk;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id s41so4452428uab.10
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 21:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=c9A8DcRXXDS2X+V5r1hiGWuN8SdGbaVAfLdGl8OLJd8=;
        b=OH2K0rFkNV8PUGzm0VtaOCDXikvjm5scgGe0xiApoe7AastdyDEy4hSv4VRI/exv/m
         Fm9Ak+KslXgKDPu3VNOTKEbY0TCA3D+mhACamz+oR1i47j79jlZLoGZPU3Ak3DF1zSwI
         2ZyqvBBcrPOI1gM/wV79/YzowPgosFRGMnpXD3frWciJ9qk+x+ezviZg11T+X0rchNj6
         dwQqYN3M3X6GvObrcRoQKkt04VKQWq03xOL6bLrxu5tCK9D9+qFXEbOBj5KxZJPr2B3I
         ZVSvzcNVWFsnSHUUOVdan3Ul4zYxGJKtKNjizL9m+k8wlotjUFuBQpxyX693NFnG6En1
         thXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=c9A8DcRXXDS2X+V5r1hiGWuN8SdGbaVAfLdGl8OLJd8=;
        b=Rt1pQwN5QdRnVoXiH6L2TbPCzJWYVNtPTcdp9akshDyqo3CQIKEzmldfIbkv88gc3N
         NHteA8z6eZX+yOJXOPfTf1G9DdrqazPIdaUW4OT5/kshm9JSfYVoSXDUABtr/DL5OYuN
         oKaDrPZd0TnUbLAuMdiW0Et9LD2SIwR0ZIS7B1+Yp8VU33kUNbwyAz1MnGnFZqL6pRi1
         3P4t3NBQe3tJx1Rhb/XUAEH9H9r8XXArEhwOKiyHLedQHzmikdHLss4Cevm3A0+CgBZu
         4SrQoQSOomWkKt3GFMK4T6Y6/VFupP7LIoZ7GQdRakwSI2gp32rWkxfD2899yxEhGsfg
         0T1g==
X-Gm-Message-State: AMCzsaW74Qem2L3o3Z60MLB+ZpJLkg92QT1qM/QJ/xk+AbKyXF/Ni0aN
	aypOa1Vx3liQUs6Rvywy1ehq4P2rUtu122wq55k/dzJj
X-Google-Smtp-Source: AOwi7QBedLj3ykv8KsDhGN0WNszKhR6QhszHDm+LQ7+qtssPPPnU7jSezBN+91ee8PTasC4esbOFHqA+nf2YFR9Xf2E=
X-Received: by 10.159.37.104 with SMTP id 95mr116184uaz.94.1507867976239; Thu,
 12 Oct 2017 21:12:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Thu, 12 Oct 2017 21:12:55 -0700 (PDT)
In-Reply-To: <1507207924-17250-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507207924-17250-1-git-send-email-aastha.gupta4104@gmail.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Fri, 13 Oct 2017 09:42:55 +0530
Message-ID: <CAHXiS5-Z7MPENNW2+inBGsqfisPxO0GYo_A3asFZOvZ_atQnkw@mail.gmail.com>
Subject: Re: [PATCH] staging: drm: radeon: de-midlayer driver loading
To: outreachy-kernel@googlegroups.com, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 5, 2017 at 6:22 PM, Aastha Gupta <aastha.gupta4104@gmail.com> w=
rote:
> This patch gets rid of the driver=E2=80=99s ->load callbacks and open-cod=
es the
> load sequence properly.
> The goal is to de-midlayer driver's loading.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/gpu/drm/radeon/radeon.h     |  1 +
>  drivers/gpu/drm/radeon/radeon_drv.c |  8 +++--
>  drivers/gpu/drm/radeon/radeon_kms.c | 70 +++++++++++++++++++++++++------=
------
>  3 files changed, 53 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/radeon/radeon.h b/drivers/gpu/drm/radeon/rad=
eon.h
> index 8cbaeec..54d5ab5 100644
> --- a/drivers/gpu/drm/radeon/radeon.h
> +++ b/drivers/gpu/drm/radeon/radeon.h
> @@ -2311,6 +2311,7 @@ typedef void (*radeon_wreg_t)(struct radeon_device*=
, uint32_t, uint32_t);
>
>  struct radeon_device {
>         struct device                   *dev;
> +       struct drm_device               drm;
>         struct drm_device               *ddev;
>         struct pci_dev                  *pdev;
>         struct rw_semaphore             exclusive_lock;
> diff --git a/drivers/gpu/drm/radeon/radeon_drv.c b/drivers/gpu/drm/radeon=
/radeon_drv.c
> index f4becad..2505d96 100644
> --- a/drivers/gpu/drm/radeon/radeon_drv.c
> +++ b/drivers/gpu/drm/radeon/radeon_drv.c
> @@ -104,7 +104,9 @@
>  #define KMS_DRIVER_MAJOR       2
>  #define KMS_DRIVER_MINOR       50
>  #define KMS_DRIVER_PATCHLEVEL  0
> -int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags);
> +int radeon_driver_load_kms(struct pci_dev *pdev,
> +                          const struct pci_device_id *ent,
> +                          struct drm_driver *driver)
>  void radeon_driver_unload_kms(struct drm_device *dev);
>  void radeon_driver_lastclose_kms(struct drm_device *dev);
>  int radeon_driver_open_kms(struct drm_device *dev, struct drm_file *file=
_priv);
> @@ -354,7 +356,8 @@ static int radeon_pci_probe(struct pci_dev *pdev,
>         if (ret)
>                 return ret;
>
> -       return drm_get_pci_dev(pdev, ent, &kms_driver);
> +       return radeon_driver_load_kms(pdev, ent, &kms_driver);
> +
>  }
>
>  static void
> @@ -563,7 +566,6 @@ static struct drm_driver kms_driver =3D {
>             DRIVER_USE_AGP |
>             DRIVER_HAVE_IRQ | DRIVER_IRQ_SHARED | DRIVER_GEM |
>             DRIVER_PRIME | DRIVER_RENDER,
> -       .load =3D radeon_driver_load_kms,
>         .open =3D radeon_driver_open_kms,
>         .postclose =3D radeon_driver_postclose_kms,
>         .lastclose =3D radeon_driver_lastclose_kms,
> diff --git a/drivers/gpu/drm/radeon/radeon_kms.c b/drivers/gpu/drm/radeon=
/radeon_kms.c
> index dfee8f7..a392ff8 100644
> --- a/drivers/gpu/drm/radeon/radeon_kms.c
> +++ b/drivers/gpu/drm/radeon/radeon_kms.c
> @@ -93,10 +93,14 @@ void radeon_driver_unload_kms(struct drm_device *dev)
>   * (crtcs, encoders, hotplug detect, etc.).
>   * Returns 0 on success, error on failure.
>   */
> -int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
> +int radeon_driver_load_kms(struct pci_dev *pdev,
> +                          const struct pci_device_id *ent,
> +                          struct drm_driver *driver)
>  {
>         struct radeon_device *rdev;
> -       int r, acpi_status;
> +       int acpi_status, r =3D 0;
> +
> +       uint32_t flags =3D 0;
>
>         if (!radeon_si_support) {
>                 switch (flags & RADEON_FAMILY_MASK) {
> @@ -105,7 +109,7 @@ int radeon_driver_load_kms(struct drm_device *dev, un=
signed long flags)
>                 case CHIP_VERDE:
>                 case CHIP_OLAND:
>                 case CHIP_HAINAN:
> -                       dev_info(dev->dev,
> +                       dev_info(pdev->dev,
>                                  "SI support disabled by module param\n")=
;
>                         return -ENODEV;
>                 }
> @@ -117,22 +121,40 @@ int radeon_driver_load_kms(struct drm_device *dev, =
unsigned long flags)
>                 case CHIP_HAWAII:
>                 case CHIP_KABINI:
>                 case CHIP_MULLINS:
> -                       dev_info(dev->dev,
> +                       dev_info(pdev->dev,
>                                  "CIK support disabled by module param\n"=
);
>                         return -ENODEV;
>                 }
>         }
>
> +       int ret;
> +
> +       ret =3D -ENOMEM;
>         rdev =3D kzalloc(sizeof(struct radeon_device), GFP_KERNEL);
> -       if (rdev =3D=3D NULL) {
> -               return -ENOMEM;
> +       if (rdev)
> +               ret =3D drm_dev_init(&rdev->drm, driver, &pdev->dev);
> +       if (ret) {
> +               dev_error(&pdev->dev,
> +                         "[" DRM_NAME ":%s] allocation failed\n", __func=
__);
> +               kfree(rdev);
> +               return ret;
> +       }
> +
> +       rdev->drm.pdev =3D pdev;
> +       rdev->drm.dev_private =3D rdev;
> +       rdev->dev =3D &rdev->drm;
> +
> +       r =3D pci_enable_device(pdev);
> +       if (r) {
> +               goto out;
>         }
> -       dev->dev_private =3D (void *)rdev;
> +
> +       pci_set_drvdata(pdev, &rdev->drm);
>
>         /* update BUS flag */
> -       if (pci_find_capability(dev->pdev, PCI_CAP_ID_AGP)) {
> +       if (pci_find_capability(pdev, PCI_CAP_ID_AGP)) {
>                 flags |=3D RADEON_IS_AGP;
> -       } else if (pci_is_pcie(dev->pdev)) {
> +       } else if (pci_is_pcie(pdev)) {
>                 flags |=3D RADEON_IS_PCIE;
>         } else {
>                 flags |=3D RADEON_IS_PCI;
> @@ -141,7 +163,7 @@ int radeon_driver_load_kms(struct drm_device *dev, un=
signed long flags)
>         if ((radeon_runtime_pm !=3D 0) &&
>             radeon_has_atpx() &&
>             ((flags & RADEON_IS_IGP) =3D=3D 0) &&
> -           !pci_is_thunderbolt_attached(dev->pdev))
> +           !pci_is_thunderbolt_attached(pdev))
>                 flags |=3D RADEON_IS_PX;
>
>         /* radeon_device_init should report only fatal error
> @@ -150,9 +172,9 @@ int radeon_driver_load_kms(struct drm_device *dev, un=
signed long flags)
>          * properly initialize the GPU MC controller and permit
>          * VRAM allocation
>          */
> -       r =3D radeon_device_init(rdev, dev, dev->pdev, flags);
> +       r =3D radeon_device_init(rdev, rdev->dev, pdev, flags);
>         if (r) {
> -               dev_err(&dev->pdev->dev, "Fatal error during GPU init\n")=
;
> +               dev_err(&pdev->dev, "Fatal error during GPU init\n");
>                 goto out;
>         }
>
> @@ -162,7 +184,7 @@ int radeon_driver_load_kms(struct drm_device *dev, un=
signed long flags)
>          */
>         r =3D radeon_modeset_init(rdev);
>         if (r)
> -               dev_err(&dev->pdev->dev, "Fatal error during modeset init=
\n");
> +               dev_err(&pdev->dev, "Fatal error during modeset init\n");
>
>         /* Call ACPI methods: require modeset init
>          * but failure is not fatal
> @@ -170,25 +192,27 @@ int radeon_driver_load_kms(struct drm_device *dev, =
unsigned long flags)
>         if (!r) {
>                 acpi_status =3D radeon_acpi_init(rdev);
>                 if (acpi_status)
> -               dev_dbg(&dev->pdev->dev,
> +                       dev_dbg(&pdev->dev,
>                                 "Error during ACPI methods call\n");
>         }
>
>         radeon_kfd_device_probe(rdev);
>         radeon_kfd_device_init(rdev);
>
> -       if (radeon_is_px(dev)) {
> -               pm_runtime_use_autosuspend(dev->dev);
> -               pm_runtime_set_autosuspend_delay(dev->dev, 5000);
> -               pm_runtime_set_active(dev->dev);
> -               pm_runtime_allow(dev->dev);
> -               pm_runtime_mark_last_busy(dev->dev);
> -               pm_runtime_put_autosuspend(dev->dev);
> +       if (radeon_is_px(pdev->dev)) {
> +               pm_runtime_use_autosuspend(pdev->dev->dev);
> +               pm_runtime_set_autosuspend_delay(pdev->dev->dev, 5000);
> +               pm_runtime_set_active(pdev->dev->dev);
> +               pm_runtime_allow(pdev->dev->dev);
> +               pm_runtime_mark_last_busy(pdev->dev->dev);
> +               pm_runtime_put_autosuspend(pdev->dev->dev);
>         }
>
>  out:
> -       if (r)
> -               radeon_driver_unload_kms(dev);
> +       if (r) {
> +               radeon_driver_unload_kms(pdev->dev);
> +               pci_disable_device(pdev);
> +       }
>
>
>         return r;
> --
> 2.7.4
>

Any update?

Aastha

