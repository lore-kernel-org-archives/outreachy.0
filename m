X-GM-THRID: 6802949681377705984
X-Received: by 2002:a37:b0d:: with SMTP id 13mr5520564qkl.9.1584553972399;
        Wed, 18 Mar 2020 10:52:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls10657547qkb.3.gmail; Wed, 18
 Mar 2020 10:52:51 -0700 (PDT)
X-Received: by 2002:a37:9cd:: with SMTP id 196mr5326597qkj.157.1584553971144;
        Wed, 18 Mar 2020 10:52:51 -0700 (PDT)
Received: by 2002:a37:6112:0:0:0:0:0 with SMTP id v18msqkb;
        Thu, 12 Mar 2020 09:31:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7hVqwbzJijx+ge3gBNT9ugODT3hIq5hZ9x6Bqi8sB0EeaCvFy9tG3O92gAzIcDD+8lwB5
X-Received: by 2002:ac8:1b33:: with SMTP id y48mr8371900qtj.136.1584030663923;
        Thu, 12 Mar 2020 09:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584030663; cv=none;
        d=google.com; s=arc-20160816;
        b=INhXGgW2oRveuWCdDPffdi0o196TY6SFv6CrXTBL4DmqnXft19ieX224ceA+6yVKcx
         kWstvyNWAdwiK8p5ODg2gz0dmDyiLolta8K8kUOz5qF9UVv8v/0nCidAlJoBDmA4zQsF
         mtE1supOkWWHdRdzlXTy3rqgX5foUzzvX9K2Tz4uEsHxcZ9klcPsR8ET5Dk/tIAP648e
         VfSl+uyU6L3Q89joVdGkrreK9ULF5yuETlLuNMiVVofBWqXihfPJkDJ16uQ+O+YUq8j1
         33D8JqsCACHBBL3HVwZ5Gf51BmPF006hdfaubciyGRVkvq0cPhgYgjvHMQjgG07t4LBu
         fs5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=OjaD6vj5jDRRnc88DeZb3dxL22aY2mB5SenuU5W0AH8=;
        b=LaTeVbH1mK4Z4Drz0XAXE8iuKOA8eTu0EmjfUoeQR11IPqFfWffExuUx9GXPnDYfjz
         LG/2186+M6edGR+HUC087P0MO/MCAyeC5ah3dL6FTl8wXTNcaqk21baVAKq5FTkR4YgR
         sDKPeMSdryYv9RC1R88FnbZgA030a01eeXMofqFoxAsqVc6J49zE3I9UcAefYAzSg5Y/
         BywpoUm0WimDmAO3r7hKmlhmWj73o5Fs0sEa1mLZeQFCl5rOy4UFDTHPn+lpKGMDPXev
         z0qP2QMlAIHuJ4NA5aDzCazDMM9cSHdJwywaTWDt0OsB+oO5eI/X9hVV3UKUa+dYvJNz
         SdRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=T1oKFagd;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id 198si304008qkh.7.2020.03.12.09.31.03
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 09:31:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=T1oKFagd;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [10.137.112.111] (unknown [131.107.147.111])
	by linux.microsoft.com (Postfix) with ESMTPSA id D182A200767C;
	Thu, 12 Mar 2020 09:31:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com D182A200767C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1584030663;
	bh=OjaD6vj5jDRRnc88DeZb3dxL22aY2mB5SenuU5W0AH8=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=T1oKFagdtk0+yUEjGk+EeSbt0BRqrPF+TjppnSaSCIZq6gHmgNzQEknovZwS+2trS
	 lrRXeniy/m7g0Asyv4MnTr5iv8afQj/mulQobN9l/AXEy3r5FpQ//mx0rYa/ihztaw
	 i97tvY9P7a0sVVFitEeD4C8621QkgO9MUfYDRzsY=
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
To: Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
 <20200312113416.23d3db5c@elisabeth>
 <alpine.DEB.2.21.2003121145540.2418@hadrien>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <b5daea1c-8172-93b6-0956-b31c3798d373@linux.microsoft.com>
Date: Thu, 12 Mar 2020 09:31:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2003121145540.2418@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/12/2020 3:49 AM, Julia Lawall wrote:

Thanks for your input Julia and Stefano.

>> That's my general preference as well, but I can't find any point in the
>> "Describe your changes" section of submitting-patches.rst actually
>> defining the order. I wouldn't imply that from the sequence the steps
>> are presented in.
>>
>> In case it's possible to say everything with a single statement as
>> Shreeya did here, though, I guess that becomes rather a linguistic
>> factor, and I personally prefer the concise version here.
> 
> https://kernelnewbies.org/PatchPhilosophy suggests:
> 
> In patch descriptions and in the subject, it is common and preferable to
> use present-tense, imperative language. Write as if you are telling git
> what to do with your patch.

Use of imperative language is the approach I was thinking as well.

thanks,
  -lakshmi

