X-GM-THRID: 6470705412124442624
X-Received: by 10.99.126.90 with SMTP id o26mr247064pgn.154.1506937636410;
        Mon, 02 Oct 2017 02:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.7.69 with SMTP id 66ls2861132pgh.1.gmail; Mon, 02 Oct 2017
 02:47:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDAOl0LQszywzGKyLL+JD2b6fLzR6OkAFs8KPtUC183BGdKH89FJlc+ZG/NZbFP8usS/70m
X-Received: by 10.101.65.141 with SMTP id a13mr762681pgq.149.1506937635445;
        Mon, 02 Oct 2017 02:47:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506937635; cv=none;
        d=google.com; s=arc-20160816;
        b=u7fjLqEluLX3j8LEftpenP2vUFY/UltCytnFdi6lUSRqq2UWg8siK05cAY9dOD1M4h
         k4ZcJgmA3YUjJpIfoVwUSQ6DHOG4p/2NhJSWFoInYbR6dTh5TFJtLciqGS3GwlRIp9T6
         /eNbtAS0JIL8c20ncnjZXfHiY7WY5LIbuOLiyDT+B9P1XFf8RC9RTTyaLAKbxhWCzmeD
         PyBwe19XGco4da5pzvX+sp21KRjaiqpo1ACPHDX15xsEKJg7BqcFwlENSlEQ7jZ440iS
         311FiCXoN0D+Yyt8jddwgMSa3+YgJwPiPBAvba/8e4lmB8R2kb/N17AjrVt8MOERjCi6
         P7ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:to:from:arc-authentication-results;
        bh=YQymzjO8OwlchZLhQXN5kA4jusonGm0zQcr3z1yZjOc=;
        b=Aier+111kN9MQoqMMmGdPgnRSarwuNJDlv/0E6gexamhzo4bFC8g4kheZ37NXEN2Lh
         gEpyHGFMNXJCK/apR5lMJ/wPsvENcne9HzPHvZ8Nny4c6cldyZNoSfkNFwxaaCCYcOXk
         OuvUH+d+auAdfNtQ4Pzitf8CNLJaWhSkuxK92zuL2yJcqDXjfuyCdKzq3+HFcmygW2fD
         vzv+UTG4zDw/sZx5HiVKok95vC8YJSjO6Iz3Co1gx3jKWNqW99FAnEUYgeI1jm6IYG1r
         NljtOQM9/i5jl6iZGz1Idr6uxvnY5hGvH50GtNVkfFRzVjK2OvwuHFgCo77dSOgylAKu
         KFFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t77si1001750pfi.13.2017.10.02.02.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:47:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 02:47:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,468,1500966000"; 
   d="scan'208";a="905808569"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2017 02:47:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Thompson <daniel.thompson@linaro.org>, Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v7 1/3] backlight: Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
In-Reply-To: <e0b74c8d-9454-4519-816b-2c580ad59b2a@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1506878301.git.meghana.madhyastha@gmail.com> <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com> <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org> <87r2um53zj.fsf@intel.com> <e0b74c8d-9454-4519-816b-2c580ad59b2a@linaro.org>
Date: Mon, 02 Oct 2017 12:46:44 +0300
Message-ID: <87infx6fwb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
> On 02/10/17 09:49, Jani Nikula wrote:
>> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
>>> On 01/10/17 18:26, Meghana Madhyastha wrote:
>>>> -#ifdef CONFIG_OF
>>>> +#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>>
>>> The above comments are more important but why does this mix defined and
>>> IS_ENABLED? Couldn't they both use defined (and preferably with the
>>> optional brackets around the CONFIG_ symbol).
>> 
>> No, always use IS_ENABLED() for tristates when you want to match 'y' or
>> 'm'.
>
> Oops.
>
> Actually it was the mis-match in the original code that attracted my 
> attention (defined on one side, IS_ENABLED() on the other)... I'd be 
> happier if both used the same approach.

Agreed.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center

