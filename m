X-GM-THRID: 6886436790360604672
X-Received: by 2002:a2e:b5a1:: with SMTP id f1mr1155813ljn.50.1603376033375;
        Thu, 22 Oct 2020 07:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls1331837lfr.2.gmail; Thu, 22 Oct
 2020 07:13:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyKrziZQM5ZNYqRtwWLmaT/uK7kv1DDzVHRWEn8SLop87sRy1DJqugpHNMZSSglgI329aX
X-Received: by 2002:a19:b14:: with SMTP id 20mr1051125lfl.308.1603376031149;
        Thu, 22 Oct 2020 07:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603376031; cv=none;
        d=google.com; s=arc-20160816;
        b=0Dr3cFuxDhf0FiZI9crtRVhpZy84A/sf2pcJzYe9u8N4i1dQCHwuTnRencrbCK9bt+
         ekURHEwZ/pW24OQE3rnJQN0VcA9pIc24t4w/oBVxuIboT1fAzmePSDtN4kV3PMRzQfoe
         GD4Jru1qsrNa5tcwDCcQ0dnuHlw3zZvLFvdGqQkdiJ0wcBpZ4qiFXvSxZqzNf2VSS1Wu
         7dRhxSXlRNTcBU0d1ecOibrPjqX/45sWiscBow4SR0/L2Ri0iP6IXxxJGAJVQXugAq9W
         VEcfokgGsw9O9qxkV2OSkJAe4m89PSggbl7Pnfm4/E3YZSiddQr8IcPv5pifUy2zXcWM
         NEQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=enF/NQ78UlHZi0kpjlRMqO+lesxBNMFNnWEi966YlwU=;
        b=0ZLdVxcBBhk80dzPZrzFLIlXBkG93sw73um5WQ4J5nKurshHOfPGc0uCMHsvRryMCL
         WMWaHaDHeTVscCwAJJk3kJsc9TwAjenvGj120TKGqy1D0KnNqdnq3whlxgdBfgioSbv1
         ONwH6+V/E2FoRGCEoJe6Z119MJ8dxaj+VG0cBPGnLXgVTpeMBa7dOwTDlpqukbTbiWfd
         pRZcl7ikE52uu0fZK69f6vr//XfhITsPtaYUbTZzmRd1EoBLPAaMsmIFUjxrcq8sEgIu
         UjtZSpbYjFwTHlF1SVailSHUBzccfoR6Qibp5tAOC6K+iOsWKqy4e9Y3k8sAVcGEeUyI
         aH8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=lcgl8Reh;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h4si65113ljl.1.2020.10.22.07.13.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 07:13:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=lcgl8Reh;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x341.google.com with SMTP id c16so2434673wmd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 07:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=enF/NQ78UlHZi0kpjlRMqO+lesxBNMFNnWEi966YlwU=;
        b=lcgl8RehFALlBvKW+2WEqI6hL3DQCvnayUx386YFYdIACL6eZdDekWSge6wl0xau/P
         OurS80PGFdE+uCz2ywydsXe1KEcW2OKxZnMZUyxNDMbbrQ0IMr0SI/JTRmyVAXaE9J1O
         hmmezb9rcO1k/LRCAp+BJe5NUZwtKmz2hdtkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=enF/NQ78UlHZi0kpjlRMqO+lesxBNMFNnWEi966YlwU=;
        b=EoUNp2JxEjFK9Jec4/+sIQuHQ+707S7nfyu5akbtU9iVSxS1+p1s+I2hFO+WjWuLrl
         wLmRY1qGOHv8yPRq1iBgN15ViovDFMLak8/+GbsrjFUVC08dGudgMHuF1h5DNCogHEl0
         ov9TmVrewFWK5GNxEpXKoHc0+vzSpEeEipriBAN3JguBBk0Ie7R81S4l2cuGN5Pq+Xrk
         IqxXJkW439LL3Vx8fpCZUsi8+h2o5VHj2qIFxYxGed4nAoS7hPmar3kzvFo6jPq6vHd4
         nL5mB8G+AjGZw0/AqKmx3V2GUO5m1VAqBMOQomQoecmx6skHy26TFhcop2IThYAfOao9
         jazQ==
X-Gm-Message-State: AOAM53110/NTjCpW/3u+V9MezZQ71PyTTxJSN3NLvPb0T0vo5I8aqXe1
	ZkV8gk6ED4O/D0BW3e17x4bGbw==
X-Received: by 2002:a1c:4604:: with SMTP id t4mr2863073wma.95.1603376030491;
        Thu, 22 Oct 2020 07:13:50 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id y4sm3726390wmj.2.2020.10.22.07.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 07:13:49 -0700 (PDT)
Date: Thu, 22 Oct 2020 16:13:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	alexander.deucher@amd.com, christian.koenig@amd.com,
	airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
	linux-media@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf()
 with sysfs_emit
Message-ID: <20201022141347.GZ401619@phenom.ffwll.local>
Mail-Followup-To: Sumera Priyadarsini <sylphrenadin@gmail.com>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
	alexander.deucher@amd.com, christian.koenig@amd.com,
	airlied@linux.ie, melissa.srw@gmail.com,
	linux-media@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Thu, Oct 22, 2020 at 07:07:50PM +0530, Sumera Priyadarsini wrote:
> Using snprintf() for show() methods holds the risk of buffer overrun
> as snprintf() does not know the PAGE_SIZE maximum of the temporary
> buffer used to output sysfs content.
> 
> This patchset is a series of Coccinelle cleanups across the staging
> directory to convert snprintf with scnprintf in the relevant files.

I think you need to edit your template here since this is now drivers/gpu,
not staging :-)
-Daniel

> 
> Sumera Priyadarsini (5):
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
>  drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--
>  5 files changed, 10 insertions(+), 10 deletions(-)
> 
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

