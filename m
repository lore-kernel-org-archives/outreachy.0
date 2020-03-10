X-GM-THRID: 6802607426621145088
X-Received: by 2002:a19:c34e:: with SMTP id t75mr12793840lff.197.1583864533359;
        Tue, 10 Mar 2020 11:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6c13:: with SMTP id h19ls2633854ljc.7.gmail; Tue, 10 Mar
 2020 11:22:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuaFbNDQ4NcFXQqmJP59pqkd5L8H/zVjUBvkZng4zW9AIe2JJ9p2gnaeNDrldAHMtDcEHiu
X-Received: by 2002:a05:651c:50a:: with SMTP id o10mr13607221ljp.189.1583864531895;
        Tue, 10 Mar 2020 11:22:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583864531; cv=none;
        d=google.com; s=arc-20160816;
        b=VRhebdE6loMGZkIh0BRYhvJWs7nYilM1AQ3UWlHAE1nIdY1rOyBAxM6YJFsysR5mts
         TZ4pb734veiikSzmBH8RVGmJEoydDZUaEjJ7q2BjCEAsVrWgPrsA9EHPpTyuHPvVCbii
         fMdVM+cbFg7AqIBiQ1MwqrWk1Dn/nZfBg+u6MBh6Xa7NG17th7s9g+8ip0FhuZJWLMJD
         +8qohbHGjoiLVGfdmS4oKEQRbDzTnYzfuhX0Q0vT1maa3kUvEWJFbGtE1J3AermFcBpr
         Aje6p2L/nrsldoaex62VGyhVPM4Gb6CR150whVQdn/nlHgxFuxspkMbNFaYoVYA+MUTz
         nPpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Vg8Qfpcw5RlDY4UCYSJa+IjIkyHrR9k4wmh3sBs45tc=;
        b=gfDkXRxl8vKk2eUbJHTIVzOi4wzyAJ5W8GjBDg8w26dRAScONDaeafmZE00FBfmQIZ
         vxa3TB9GTSW27cBS3C61qYRi9XfTpJJaA9fZjvvj5Fz1SrSOJnjl3xt3tKtTIVZr+5Ov
         Lp8bEuE9FcucwpsaAz+7InP1S6AtVuLMiwNXsxrxoIpNTmck2zM1w7aZcFmSXTTlHDRp
         QIDGyuZAJyZcurYpNVFysMJma331W41opPLlEfsWHvK6N8d6vqcANSAv9iDgdtsG50g3
         2z640+VwPqfRmZIENNsMWbp53YZwXL6eIFsX3wTT98ICJfwSRjWE3Aa2PMtYoIsQSq+5
         p0qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u8si606933lfu.3.2020.03.10.11.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:22:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,537,1574118000"; 
   d="scan'208";a="341924407"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 19:22:10 +0100
Date: Tue, 10 Mar 2020 19:22:10 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH V2] staging: comedi: dt2801: remove
 old unused code
In-Reply-To: <20200310181426.GA19938@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003101918160.26409@hadrien>
References: <20200310181426.GA19938@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Mar 2020, Deepak R Varma wrote:

> patch V2 revision is for updating the patch description only.

This is not the correct way to present the v2 of a patch.

The discussion of the difference as compared to the previous version
should go below the ---.  The text above the --- will go in the git
history.  The git history doesn't contain the v1, so the discussion about
how the current patch is different from the v1 is not relevant at that
point.

Please search for "Versioning one patch revision" in the tutorial:
https://kernelnewbies.org/FirstKernelPatch

> There are two #if 0 blocks that have no recent history of any change. We
> can remove those code blocks for improved readability of the code.

The log message should be written in the imperative.

Please look at some patches submitted by others to get a feel for how they
should be presented.  You can look at the patches on this mailing list and
on lkml.org.

julia

