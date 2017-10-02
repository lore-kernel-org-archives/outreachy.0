X-GM-THRID: 6470705412124442624
X-Received: by 10.159.234.68 with SMTP id c4mr499538plr.55.1506934899996;
        Mon, 02 Oct 2017 02:01:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls3456033pfd.3.gmail; Mon, 02 Oct
 2017 02:01:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBf6QvsZuIvr7II+bYsOd8FxFRaWquM6gkFuYjgbwEyQqIFK83a1khvex44boP9uNqnMUpH
X-Received: by 10.101.83.141 with SMTP id x13mr717281pgq.37.1506934899091;
        Mon, 02 Oct 2017 02:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506934899; cv=none;
        d=google.com; s=arc-20160816;
        b=gelZe7mUnABt2vTNv6eM+iRrmavdDS7XSTpgmM1LOqlxf2BLNQ7jN+qXLjbimBgEvC
         wKQxKKZGCd0eKoz9cgqLN52dHhuI5v7q/oreaIBiVZFPPknC9Odhkv9gZaZQPHoSv82e
         ozluppSnLRGL71b6jNbvYB0qrbuEvD37kEwepAu2YKwJoBxpIYtwXN0xIGaIKjWfaEbA
         uNLoJujd9tgSxmBSmqHRw7YSYZ9cKc7UGxzBwPRcAvt8vLjyvKti7mV/SUuBWrKaFmR+
         tH77slUO2rnW29mGOzpkJmDFKIaCAdPGx7paNFDKuFeiDqV+9w2u7I5igL5OPhkH4bLu
         K06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:to:from:arc-authentication-results;
        bh=/aVojGLhfenQpvBrjOdyCe6Vnh9gV4tOQirEjQskXTY=;
        b=v57gFv3vRsLlLiw2tlQxXbqGPf3oqtrCta277Ubb2BRD6iaGmN9yJs6JBZtUZAwSRY
         9/HZIb2dp9X2ScrcuLipbNtXqET4MyJVOC7Wb5ayA0SMYF99tJIqz7W71Xe6s8qxJJZE
         Uv5ke4VG8wxRMQAdtYimYrsHTTeRWWdaGVst4hCvbY8OuxsdnPGlcQyKzMLR3qLGgaPv
         zkjOz+f/8O1I/wLjTcoBwyKBrr7WJjSS1ba7nNhnv1EX5MylU8ughrapayalH3a39Udq
         QC8vek/wWwyFe5QC1QKtjkxrSK2MWnILYMBq1ovuLQO/td/jHmDeO+iHQnghanE37srF
         IRlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id c200si989467pfb.14.2017.10.02.02.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 02:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,468,1500966000"; 
   d="scan'208";a="905798412"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2017 02:01:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Thompson <daniel.thompson@linaro.org>, Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v7 1/3] backlight: Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
In-Reply-To: <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1506878301.git.meghana.madhyastha@gmail.com> <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com> <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Date: Mon, 02 Oct 2017 12:00:54 +0300
Message-ID: <87o9pp6i0p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
> So I'm coming to this patchset cold but can you explain *why* something 
> wants to call of_find_backlight_by_node() when there is no backlight 
> support enabled. Why isn't the code that called is conditional on 
> BACKLIGHT_CLASS_DEVICE?
>
> The undefined symbol issue is a pain but to be honest I'd rather solve 
> the use of undefined symbols by avoiding declaring them; this making 
> them into compile errors rather than link errors.

Typically the kernel header files define static inline stubs of the
functions when the actual functions aren't configured/built. The code
using the functions looks the same regardless of the config option, and
handles the -ENODEV or NULL or whatever returns from the stubs
gracefully. With the inlines, the compiler can usually throw out much of
the code anyway.

In this regard, the backlight interface is an exception, forcing the
callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
the rule.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center

