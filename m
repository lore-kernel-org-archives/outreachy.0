X-GM-THRID: 6470705412124442624
X-Received: by 10.99.119.139 with SMTP id s133mr1411386pgc.136.1506934192424;
        Mon, 02 Oct 2017 01:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.212.80 with SMTP id u16ls3446128pfl.10.gmail; Mon, 02 Oct
 2017 01:49:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAX4slmZqhwpuLiE+uheesK3sJM9velLm0Ejey/WOchkBbtXX5HRUsrPXmnCd1YyXlM/pcm
X-Received: by 10.84.236.5 with SMTP id q5mr1193401plk.17.1506934191520;
        Mon, 02 Oct 2017 01:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506934191; cv=none;
        d=google.com; s=arc-20160816;
        b=NL66g7pjgj0SkmM+RzpCZSpvgKfCzIrOnsTY3t3tEjkLGsQ97dceLajTf7ZmM+bRsj
         PZQtGWtYI44M6Puixp8lJWgDYbWb4xCC03NNcX3n0vj4IBXIR0cJYKR4zonMiGhJBtda
         Yl6LcU0/HlDU3lj00Fty9VXZXyRrLi4filoXb0iN/URRYz06ufm4KLPKZq9fnqpZsU36
         x7tQu9f8zaxQYRzCQjTjjt76iIWvO4RaT0a+XZet4Ruut33WHecyWVXhgvX87GLfDIaJ
         3xY/opivoSninGfLMTsLSNPC80PhicyFKgCi48JsytTlN7LXd/VDB11LKy8oDoTsrSEv
         nNng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:to:from:arc-authentication-results;
        bh=xnmWPm/z0KEK7wG+tNq1RjLjAJMk/zLl7qsAyjDznfM=;
        b=mAv7VIarhFD76wLmaEKLOkuFyMaZEjdu27tIUCsmzVRzm5yJnjCx38TSh8Y03F6Jyo
         si4DqBK8exYfHbVl0oniQXQ1wWhWmPrgYuVKJiK8iKACIDIsjYzRn04fZIdi1F3XLmaC
         QrCBA+zUsZsw+DZ8YF42P7hsY7YzccQOBZYhEyOOL+D/lePhE4c9MYX4V6guhvV9JPFj
         zl7nppyo5Eweuu5sCIZdNnTmJEZHhd1q8ovYaSRD/zq7r2cKzPfdeaR5jEBoBYd27weO
         9e22T237maZHWnc4A6VylL9gCM3PqFvuMTeSE83M18qaksNxNaMUUux4pbD8PtPw/Dg+
         j7wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id 13si1057796pfk.26.2017.10.02.01.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 01:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 01:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,468,1500966000"; 
   d="scan'208";a="905796015"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2017 01:49:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Thompson <daniel.thompson@linaro.org>, Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v7 1/3] backlight: Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
In-Reply-To: <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1506878301.git.meghana.madhyastha@gmail.com> <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com> <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Date: Mon, 02 Oct 2017 11:49:20 +0300
Message-ID: <87r2um53zj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
> On 01/10/17 18:26, Meghana Madhyastha wrote:
>> -#ifdef CONFIG_OF
>> +#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>
> The above comments are more important but why does this mix defined and 
> IS_ENABLED? Couldn't they both use defined (and preferably with the 
> optional brackets around the CONFIG_ symbol).

No, always use IS_ENABLED() for tristates when you want to match 'y' or
'm'.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center

