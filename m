X-GM-THRID: 6475501667265544192
X-Received: by 10.55.158.86 with SMTP id h83mr3160808qke.6.1507851132211;
        Thu, 12 Oct 2017 16:32:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.159.85 with SMTP id i82ls2540568qke.2.gmail; Thu, 12 Oct
 2017 16:32:11 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RfIFktvAhhVIYAHG2uHacihOikg1nlyvkM1u6xXW+CL6mFGP1TMdK9RPrYhrL9B7dguRVg
X-Received: by 10.200.17.130 with SMTP id d2mr3291163qtj.17.1507851131661;
        Thu, 12 Oct 2017 16:32:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507851131; cv=none;
        d=google.com; s=arc-20160816;
        b=Kf1yCa/Bbv4RQeu+dHZ6mnxPiWJik8AjfgJ4l1HrRmZ4SvKgN7bgp4oxVYmRgXWqoV
         BlFgCMa+2bD8C6TCkG/hLfCfD2IRBN2uDs3MRCCxJcr4aSpt5oKkdIUoMpc7rGPMx8cC
         MFLKMZFdfy3fejgLjoH9LbI/V8FXhkxBR1DiAdvC+OpQS0AkMTuztGJapcZuaKOT7jI1
         zK9EjIXLvDz4Z4tgVX4dqTO0VS+ZE2kjKnbGodbH5rZvxUDmdwlmVlnO05JjkLZTT1rH
         pavMTEV/W1qL1pkbyDi8AbWdZReXzUU5M7SwTbWj4E80/GZgODVoh7o2amuDw4W/+qSF
         jqcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:arc-authentication-results;
        bh=2Spzbnazo6X283asIQ6oVzEFzD6H7Z8Q/AaJ3S799oU=;
        b=jdRJ5Sqzteuz9EC6nRW7pA6GTbV8kBRCvazcY+UwSFPno4JYZN+tvX8W9HDqc1k2Ij
         lFDTxD99Z2YGF2WkvCjdbqla2ECe1Kw80gzxtcImtLn7aN8oMn1mXIxGFr4cHQYfXcuQ
         lEZsX08jenoCx+HQBTJsX9LT/r/DAFlSE+EPAnKG7QJJlyHLgZFGsc3u/C15iL/aPXi8
         6L+2C36vMZOSNX6z/2IEJifOf+J2Hquky1jGZ4YZxMzewQQ4mXoW8Eg4D8BL6fDDTxCD
         n/UbPPDxflIprYQoR0LP8OS2flSsMaCF/NFm5pkpWiOXhqYVdZ7vo8/jqHTztmTrxEVw
         UqcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Return-Path: <fengguang.wu@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i8si335484qta.1.2017.10.12.16.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 16:32:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2017 16:32:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,368,1503385200"; 
   d="gz'50?scan'50,208,50";a="1181432732"
Received: from bee.sh.intel.com (HELO bee) ([10.239.97.14])
  by orsmga001.jf.intel.com with ESMTP; 12 Oct 2017 16:32:08 -0700
Received: from kbuild by bee with local (Exim 4.84_2)
	(envelope-from <fengguang.wu@intel.com>)
	id 1e2n2W-000GFO-7d; Fri, 13 Oct 2017 07:37:20 +0800
Date: Fri, 13 Oct 2017 07:32:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: kbuild-all@01.org, dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>, gregkh@linuxfoundation.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] drm: Extract drm_debug.[hc]
Message-ID: <201710130730.TWb7j1dL%fengguang.wu@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
In-Reply-To: <830fcacb4513dc2ca7f44cb1828d8cfa0e4e15ae.1507693829.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: fengguang.wu@intel.com
X-SA-Exim-Scanned: No (on bee); SAEximRunCond expanded to false


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Haneen,

[auto build test WARNING on drm/drm-next]
[also build test WARNING on v4.14-rc4 next-20171009]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Haneen-Mohammed/drm-Extract-drm_debug-hc/20171013-052937
base:   git://people.freedesktop.org/~airlied/linux.git drm-next
reproduce: make htmldocs

All warnings (new ones prefixed by >>):

   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   kernel/trace/blktrace.c:824: warning: No description found for parameter 'cgid'
   drivers/gpio/gpiolib.c:593: warning: No description found for parameter '16'
   drivers/gpio/gpiolib.c:593: warning: Excess struct/union/enum/typedef member 'events' description in 'lineevent_state'
   include/linux/usb/gadget.h:232: warning: No description found for parameter 'claimed'
   include/linux/usb/gadget.h:232: warning: No description found for parameter 'enabled'
   include/linux/usb/gadget.h:414: warning: No description found for parameter 'quirk_altset_not_supp'
   include/linux/usb/gadget.h:414: warning: No description found for parameter 'quirk_stall_not_supp'
   include/linux/usb/gadget.h:414: warning: No description found for parameter 'quirk_zlp_not_supp'
   fs/inode.c:1680: warning: No description found for parameter 'rcu'
   include/linux/jbd2.h:443: warning: No description found for parameter 'i_transaction'
   include/linux/jbd2.h:443: warning: No description found for parameter 'i_next_transaction'
   include/linux/jbd2.h:443: warning: No description found for parameter 'i_list'
   include/linux/jbd2.h:443: warning: No description found for parameter 'i_vfs_inode'
   include/linux/jbd2.h:443: warning: No description found for parameter 'i_flags'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_rsv_handle'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_reserved'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_type'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_line_no'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_start_jiffies'
   include/linux/jbd2.h:497: warning: No description found for parameter 'h_requested_credits'
   include/linux/jbd2.h:497: warning: No description found for parameter 'saved_alloc_context'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_chkpt_bhs'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_devname'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_average_commit_time'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_min_batch_time'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_max_batch_time'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_commit_callback'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_failed_commit'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_chksum_driver'
   include/linux/jbd2.h:1050: warning: No description found for parameter 'j_csum_seed'
   fs/jbd2/transaction.c:511: warning: No description found for parameter 'type'
   fs/jbd2/transaction.c:511: warning: No description found for parameter 'line_no'
   fs/jbd2/transaction.c:641: warning: No description found for parameter 'gfp_mask'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_pin'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_unpin'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_res_obj'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_get_sg_table'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_import_sg_table'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_vmap'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_vunmap'
   include/drm/drm_drv.h:594: warning: No description found for parameter 'gem_prime_mmap'
   include/drm/drm_mode_config.h:771: warning: No description found for parameter 'modifiers_property'
   include/drm/drm_mode_config.h:771: warning: Excess struct/union/enum/typedef member 'modifiers' description in 'drm_mode_config'
   include/drm/drm_plane.h:552: warning: No description found for parameter 'modifiers'
   include/drm/drm_plane.h:552: warning: No description found for parameter 'modifier_count'
>> include/drm/drm_debug.h:78: warning: No description found for parameter 'dev'
   include/drm/drm_debug.h:78: warning: No description found for parameter 'fmt'
   include/drm/drm_debug.h:96: warning: No description found for parameter 'dev'
   include/drm/drm_debug.h:96: warning: No description found for parameter 'fmt'
   include/drm/drm_debug.h:121: warning: No description found for parameter 'dev'
   include/drm/drm_debug.h:121: warning: No description found for parameter 'fmt'
   include/drm/drm_debug.h:172: warning: No description found for parameter 'dev'
   include/drm/drm_debug.h:172: warning: No description found for parameter 'fmt'
>> drivers/gpu/drm/drm_debug.c:1: warning: no structured comments found
   drivers/gpu/host1x/bus.c:50: warning: No description found for parameter 'driver'
   drivers/gpu/drm/tve200/tve200_drv.c:1: warning: no structured comments found
   Documentation/core-api/kernel-api.rst:354: ERROR: Error in "kernel-doc" directive:
   unknown option: "external".

vim +/dev +78 include/drm/drm_debug.h

    48	
    49	#define _DRM_PRINTK(once, level, fmt, ...)				\
    50		do {								\
    51			printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
    52				     ##__VA_ARGS__);				\
    53		} while (0)
    54	
    55	#define DRM_INFO(fmt, ...)						\
    56		_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
    57	#define DRM_NOTE(fmt, ...)						\
    58		_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
    59	#define DRM_WARN(fmt, ...)						\
    60		_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
    61	
    62	#define DRM_INFO_ONCE(fmt, ...)						\
    63		_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
    64	#define DRM_NOTE_ONCE(fmt, ...)						\
    65		_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
    66	#define DRM_WARN_ONCE(fmt, ...)						\
    67		_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
    68	
    69	/**
    70	 * Error output.
    71	 *
    72	 * \param fmt printf() like format string.
    73	 * \param arg arguments
    74	 */
    75	#define DRM_DEV_ERROR(dev, fmt, ...)					\
    76		drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
    77			       fmt, ##__VA_ARGS__)
  > 78	#define DRM_ERROR(fmt, ...)						\
    79		drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
    80	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--NzB8fVQJ5HfG6fxh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
tacaLxOoEjlsKo3/PyJddtRAYQAA

--NzB8fVQJ5HfG6fxh--

