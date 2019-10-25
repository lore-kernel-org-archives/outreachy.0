X-GM-THRID: 6749590938696286208
X-Received: by 2002:a1f:e547:: with SMTP id c68mr1000146vkh.67.1571974692955;
        Thu, 24 Oct 2019 20:38:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:318f:: with SMTP id v15ls441018uad.15.gmail; Thu, 24 Oct
 2019 20:38:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzrMzFgw2MintejzOtv7PexnHYa5Z+D4GgH2WmsNGrvU4nyczyKVXj0KLuHEhZ4kzyUlf5
X-Received: by 2002:ab0:5a97:: with SMTP id w23mr530113uae.129.1571974691516;
        Thu, 24 Oct 2019 20:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571974691; cv=none;
        d=google.com; s=arc-20160816;
        b=wbc5/lBPbi0NO0OiGw+GBUywXsyu8K0OtQtHrC5p7yxSkQXv1m0kym3SGR7XaCg9W1
         988VoOkKOSVdRJmq7S0XFfMp9RjPGLfGBY5qeK9Bsc15lWGu7ezQIQsZ/tiwJhJRO2Jr
         i4lGurquE/rAQWyxdgV6j9KN0+pYkUVnLMAcWq9s7mv4JL7EzBCQDlEwz/EEQC7Pip/L
         lI5tpCCUOAidYLhBhryrzTgBE8NoZNLfn5gti4aLbrFENeXaYNiLy8gQWkV2jjuLk/mi
         CxXRIq9zKEu5i22ygw8AHe5LCaQ9VA1n2CSGSz5FgyvlfIhjw6IB0jfvVhmX6ygudUpc
         RK8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=9xlnRxbz5e5Gec4it5mCjsOFIOEz65fy9CE22wHzOHQ=;
        b=bCGY3f0pdbF+mo1fXHNSGq+yg1rk2DBUqsxJ3TDxZxj8BwKch1IZHGWnCI60PkpGf8
         pV5z5Wxnu9WbgZ3SsWcC0fXMGbEF+Q1S2FduahBNJdbVtFEbWUkiJaTPWrrHudZ8dzM+
         rPWqWiSX2z6jjWaNLous28uX2pLYaS7i4IwC4Nn7saEpnTVwmZKNiz4byvVJe9e9VYmT
         hgSw3EdV6izyztQZZ86SwQU/Ek2RmwOM+L2q1TB+ZOmpXwD1GIiU1iLXxA5QXISlaiHf
         PxLeXlbxIs7iWlDFsEL4nJrNWsIKr5wI62lYaMMC/6J3YoPz0cG1tPseKtcLKGuGrBVv
         oIJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CDIFeZOv;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v4si61479vka.3.2019.10.24.20.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CDIFeZOv;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id x28so600287pfi.12
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 20:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9xlnRxbz5e5Gec4it5mCjsOFIOEz65fy9CE22wHzOHQ=;
        b=CDIFeZOvtLPMpAoNRpBSSxesK+l4qgc4U4YJQyQQFRn+kMT/tvB+L9xj4psbgj2sDo
         jvOyeTnKCY5Vdkg5ynMXnsCtSKfprt3GCdB2NRnSoe2T+IxxvwlLyHXqHj3uvjvAW4F5
         ExGae8XSp41dxXQYNOqY6m2LQCiWzwvNniKSNN5qH6deGsbFfUlkcIRXEmg+mGxtKF82
         d1dxKP+ae6/4tChL5rR4QPJdUUQczwdtcNxy06WIyZet1a5+MyprNMT0ETqgWRwc/w2w
         WhQXeaeDtgGzZ5CJxDdVnzIHgWKhTxUugvVNzldb875Rv/64nZNe2emrO5YznZ5wltgZ
         8LFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9xlnRxbz5e5Gec4it5mCjsOFIOEz65fy9CE22wHzOHQ=;
        b=pOu2UcrfGhrHYk2AQT7yoiSYfO4buuZpcMaHHdYqkrjPNBkHH48u3TVUO6jqdSX7Xt
         OVZ2yxHwPX2ryCZFmDXiVxZX+dEwpWoE99yJ9k6NF0SbL0RdxnNmeSu+kkEFUH5svKaL
         Eh2D30yi7JMPFUTb2LSlsIXMITRD5JTMduQDAS5IsmnidJydGhfTRcAqG+ymIikEEi7x
         pOqxPlteJMDsAFn3q5A4iU1Z99cl5EcPifUBitUK5oc6rEatdCrwXFABlRt3oNczMSoM
         FlHoHLulTQBCJPsczDiRKgw4GizyqzT8M30prpoHONJxxLCCZzXDGkh6IIptQRMKwrD/
         AaAQ==
X-Gm-Message-State: APjAAAVtDCZoVT9+BFk8b8mHODMjDcgoraV1uFwtt5puhLo64gfWM6XO
	4G5jcbvmxrHadZ2EZBVqpjg=
X-Received: by 2002:a63:5909:: with SMTP id n9mr1674233pgb.101.1571974690423;
        Thu, 24 Oct 2019 20:38:10 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.254.95.2])
        by smtp.gmail.com with ESMTPSA id p36sm489777pgm.55.2019.10.24.20.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 20:38:09 -0700 (PDT)
Date: Fri, 25 Oct 2019 06:37:58 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Harry Wentland <hwentlan@amd.com>
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	Alexander.Deucher@amd.com, Christian.Koenig@amd.com
Subject: Re: [PATCH] drm/amd/amdgpu: make undeclared variables static
Message-ID: <20191025033758.GA3201@wambui>
Reply-To: 0f3fa30e-0392-054b-a81e-b9cb4475fe07@amd.com
References: <20191019072426.20535-1-wambui@karuga.xyz>
 <0f3fa30e-0392-054b-a81e-b9cb4475fe07@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0f3fa30e-0392-054b-a81e-b9cb4475fe07@amd.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 23, 2019 at 03:09:34PM +0000, Harry Wentland wrote:
> On 2019-10-19 3:24 a.m., Wambui Karuga wrote:
> > Make the `amdgpu_lockup_timeout` and `amdgpu_exp_hw_support` variables
> > static to remove the following sparse warnings:
> > drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:103:19: warning: symbol 'amdgpu_lockup_timeout' was not declared. Should it be static?
> 
> This should be declared in amdgpu.h. amdgpu is maintained on the
> amd-staging-drm-next branch from
> https://cgit.freedesktop.org/~agd5f/linux/?h=amd-staging-drm-next. Can
> you check there?
> 
Hey Harry,
I checked the amd-staging-drm-next branch, and 'amdgpu_lockup_timeout'
is already declared as extern in amdgpu.h, so sparse only warns about
'amdgpu_exp_hw_support'. 
I'll do the same for 'amdgpu_exp_hw_support' and send an update patch
series for this and the "_LENTH" mispelling.

Thanks,
wambui karuga
> > drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:117:18: warning: symbol 'amdgpu_exp_hw_support' was not declared. Should it be static?
> > 
> > Signed-off-by: Wambui Karuga <wambui@karuga.xyz>
> > ---
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > index 3fae1007143e..c5b3c0c9193b 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > @@ -100,7 +100,7 @@ int amdgpu_disp_priority = 0;
> >  int amdgpu_hw_i2c = 0;
> >  int amdgpu_pcie_gen2 = -1;
> >  int amdgpu_msi = -1;
> > -char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
> > +static char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
> >  int amdgpu_dpm = -1;
> >  int amdgpu_fw_load_type = -1;
> >  int amdgpu_aspm = -1;
> > @@ -114,7 +114,7 @@ int amdgpu_vm_block_size = -1;
> >  int amdgpu_vm_fault_stop = 0;
> >  int amdgpu_vm_debug = 0;
> >  int amdgpu_vm_update_mode = -1;
> > -int amdgpu_exp_hw_support = 0;
> > +static int amdgpu_exp_hw_support;
> 
> This is indeed only used in this file but for consistency's sake it's
> probably better to also declare it in amdgpu.h rather than make it
> static here.
> 
> Harry
> 
> >  int amdgpu_dc = -1;
> >  int amdgpu_sched_jobs = 32;
> >  int amdgpu_sched_hw_submission = 2;
> > 

