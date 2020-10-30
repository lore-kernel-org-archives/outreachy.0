X-GM-THRID: 6889250356687011840
X-Received: by 2002:a17:902:a517:b029:d5:d09d:f319 with SMTP id s23-20020a170902a517b02900d5d09df319mr8399419plq.15.1604051574364;
        Fri, 30 Oct 2020 02:52:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:3e45:: with SMTP id t5ls1679257pjm.2.gmail; Fri, 30
 Oct 2020 02:52:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwYCQhVSyAaCKlSLUOpmCjT+ta/zN9fij6vLBfqY+nMGeLKcUtUIahoXRccvEQwedYUzCdF
X-Received: by 2002:a17:90a:a4c9:: with SMTP id l9mr1736789pjw.203.1604051572643;
        Fri, 30 Oct 2020 02:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604051572; cv=none;
        d=google.com; s=arc-20160816;
        b=VoyzPlolzPVkxLZFnqJe2kK8MJa/XFlP7+S8fz1P96fAFBboZ7kZA48l+A2HY18gWC
         HWih9063ZIUupFeqo6l3tn8XLi+rxsElIKljveDC4+P401EOup1WAMnQBjVXQs0HhFTD
         eEpfmEs3JZhbPgJbfGAvwJaP+nwjHtMS9mI290F8bS87EmvCuU97Hzb3moJXhtFjTyQZ
         64oYvLlt3bRqJXd/s/0auRl5OIwGxAcGOTY67Ryey0Igc0DZr1XnjzROeljhKqnXW1vo
         oj/ZzX0zPVAXXXmkoJUYqu+I9avXLQ5BYuW50tdv8lp9Cv8BUS8vdaf1+ViSdtPCqbsq
         tkcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=j6+O7wialihm7+GvxoLEszSsT6KYjIk98NXE9JiuQSM=;
        b=wBn0yKLU+KB0LomxRQ+6C2VA9j//G5IU3NjLV6i83WRU7ZwN3Gs4DgU7k3p47YEIG3
         fEiuOosiynRWEOMpSDyzj7UGLbb10wPf+GBcuzE/L4sayL0ExNm5sSV0e7oJsFGyd2bW
         HjlhdxV9g2cUXsU3oGkD4R78kjfwDZj1EuUsMsbK65IyS+0sW5WXxsN3erAMoGk3iaYz
         LjpWXzthm6Xz6RlByACaLFeP4mYBHoBV/ln40Y808vW0PXxLILOFPuB6NOXlHL84sQig
         nbKdvxiTsJxPgwI2IcDCAl7rEdH2+f5Pb080qgr/Kskeu2hGXmxE2sjgfMlABOu4o9Ov
         o/iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id f189si343926pgc.4.2020.10.30.02.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: mot5EfqiUInbjut6EQGuVBGl4sCAMoP8niD9ufqjtZF6d96xCFCmxjtnbSdumJj+cOaRoYj8ED
 rs6q2pyScBlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="186389237"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="scan'208";a="186389237"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 02:52:51 -0700
IronPort-SDR: GAZHBb/NZ1aCxlqH/DTr6Gb2F06UdOtZdHy8Yb4FqYGhRIS38jMy9DVb8F5wJFhER+dmOJqmbN
 pgplGxfz3DBA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="scan'208";a="537011039"
Received: from gcobrien-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.22.113])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 02:52:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: Re: [PATCH] drm/i915/gvt: use DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
In-Reply-To: <20201030032945.GA274850@my--box>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201030032945.GA274850@my--box>
Date: Fri, 30 Oct 2020 11:52:42 +0200
Message-ID: <87y2joghw5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Fri, 30 Oct 2020, Deepak R Varma <mh12gx2825@gmail.com> wrote:
> Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> function in place of the debugfs_create_file() function will make the
> file operation struct "reset" aware of the file's lifetime. Additional
> details here: https://lists.archive.carbon60.com/linux/kernel/2369498

Please describe what the functional impact is in the commit message. I
don't understand what 'make the file operation struct "reset" aware of
the file's lifetime' means here.

For referencing LKML posts, please prefer https://lore.kernel.org/.

For referencing commits already in the kernel, please prefer the format
c64688081490 ("debugfs: add support for self-protecting attribute file
fops").


BR,
Jani.

>
> Issue reported by Coccinelle script:
> scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Please Note: This is a Outreachy project task patch.
>
>  drivers/gpu/drm/i915/gvt/debugfs.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
> index 62e6a14ad58e..18adfa2d5f5b 100644
> --- a/drivers/gpu/drm/i915/gvt/debugfs.c
> +++ b/drivers/gpu/drm/i915/gvt/debugfs.c
> @@ -147,9 +147,8 @@ vgpu_scan_nonprivbb_set(void *data, u64 val)
>  	return 0;
>  }
>  
> -DEFINE_SIMPLE_ATTRIBUTE(vgpu_scan_nonprivbb_fops,
> -			vgpu_scan_nonprivbb_get, vgpu_scan_nonprivbb_set,
> -			"0x%llx\n");
> +DEFINE_DEBUGFS_ATTRIBUTE(vgpu_scan_nonprivbb_fops, vgpu_scan_nonprivbb_get,
> +			 vgpu_scan_nonprivbb_set, "0x%llx\n");
>  
>  /**
>   * intel_gvt_debugfs_add_vgpu - register debugfs entries for a vGPU
> @@ -165,8 +164,8 @@ void intel_gvt_debugfs_add_vgpu(struct intel_vgpu *vgpu)
>  	debugfs_create_bool("active", 0444, vgpu->debugfs, &vgpu->active);
>  	debugfs_create_file("mmio_diff", 0444, vgpu->debugfs, vgpu,
>  			    &vgpu_mmio_diff_fops);
> -	debugfs_create_file("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
> -			    &vgpu_scan_nonprivbb_fops);
> +	debugfs_create_file_unsafe("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
> +				   &vgpu_scan_nonprivbb_fops);
>  }
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center

