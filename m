X-GM-THRID: 6476305073791041536
X-Received: by 10.28.229.82 with SMTP id c79mr275150wmh.13.1507916432308;
        Fri, 13 Oct 2017 10:40:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.142 with SMTP id g136ls366478wmd.7.gmail; Fri, 13 Oct
 2017 10:40:31 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Qkc9iEyFtXatUdxBCXPr33wiKVAym5cQEqQxATkO/wszu7LO3TvYg0uN6xjxdISmfrSfqC
X-Received: by 10.28.54.84 with SMTP id d81mr281545wma.21.1507916431430;
        Fri, 13 Oct 2017 10:40:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507916431; cv=none;
        d=google.com; s=arc-20160816;
        b=I3aK/0zYLIoAht/tw8OmqAWhVeFlDxYFHiKDfPWYJpR0ZI3ZNT6bqAQoXzCuXUMX7y
         0GaWnRM9akpXR7UAtcKCBv6nUBQjBPoPx5YI3L6v9C6Ey/7uWsk7j2sq9g4YtZWPNZU3
         Z+BqX8+Y0J8LyrYaTueVm73XMdtDSD9bA4MjLIXW76zdyxmkVlBv4cyFrLz6C/Srz/q9
         R4QCj2dX4KiyKu1EG3gWjzxqImTC4JS9DDC/WZQCDrBwrkqVoYLdXwfdxQZmmBodbRQF
         wAENCYR0VU5AkgF+H7yHSJ85s81B1ycKWB3FZEK6EFLyfgJZKih9LFGagWET0AYnlET2
         RBeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1NjSNSqPE1dHoitsIFmYvJ0w0mZZ34ciE4gOCoVVFOw=;
        b=N7E7w+AsmIHCEBjeMnMuyw3F0Pi/dvgIthmt7KWIZ00WwILsl53tF/9NpGdMWUK7vA
         FIyPB+5OXiZaJi3dmHpBYZkSOX3N7j1Jk/uN3vz+SEkg4QQ1Yjz73OW/Q54HXsdMimXy
         PTWmZBtOHiW05hk5pMCm0+73OrquAXaxaM1CkUCqa3/HO2Q0Dzw83LQV2QtayG2gets6
         dwLNQKVruhRF3IpmiXCojqIwJUeaRPEbCw+BV8vbWTORg+gqYx/St6IpQ/0THcb3CPjV
         JKHSfvuTgiKBj2BPel1CwAN6Kn4IZyIe+yFMavVBGbh0Q+uhSKsgYmgxLcshBZVV9Nzh
         KQQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h17si94114wmd.0.2017.10.13.10.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 10:40:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,371,1503352800"; 
   d="scan'208";a="240936425"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 19:40:08 +0200
Date: Fri, 13 Oct 2017 19:40:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: alexander.deucher@amd.com, christian.koenig@amd.com, airlied@linux.ie, 
    amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] drm/amd/powerplay: Remove unnecessary
 cast on void pointer
In-Reply-To: <20171013173341.12367-1-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1710131938400.6944@hadrien>
References: <20171013173341.12367-1-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -3400,7 +3400,7 @@ static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
>  static int smu7_find_dpm_states_clocks_in_dpm_table(struct pp_hwmgr *hwmgr, const void *input)
>  {
>  	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;

Actually, there are some more cleanup opportunities heer and in some other
cases.  There is no need for the newline before input.

julia

