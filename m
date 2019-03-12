X-GM-THRID: 6667559870599790592
X-Received: by 2002:a5d:624e:: with SMTP id m14mr595083wrv.3.1552412354804;
        Tue, 12 Mar 2019 10:39:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:644d:: with SMTP id d13ls1124973wrw.7.gmail; Tue, 12 Mar
 2019 10:39:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzrEIRYyj8wDL0qFMuqy58dren6zmmbpQFQcwa/feI6ahLOrragb8babLTsvmjUVRYIHchs
X-Received: by 2002:a5d:638b:: with SMTP id p11mr2006619wru.6.1552412354074;
        Tue, 12 Mar 2019 10:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552412354; cv=none;
        d=google.com; s=arc-20160816;
        b=SJvAkgfHnQnJmhGSfW9brmXKpBsOrNEeoYU5Zji7Ga0A3grbQAjDByV1fwxGI68ZtQ
         aYLWQrtUJ0b8YymeCXqqNV5nWn5IHoAFbqwU2h4AjIZ7Bum7YNafbx/Hktwl/IND8Dr7
         DTS2GXSfrlhjJXTjEqlVTiGhF4dLvyCv1xgYLl7SN+xMsZzvqdHhiQVyx/sTiGGZQTiX
         T0Ltk35iPetaZaAufkiWU1S+MtxJvptWoSk0WEK+MLAnMEGLjwxENGID+5oIu6czjdMf
         hEdi8wBO2VxuSrmEBD0ac5G5y/EaUrBbr7qWatspD4vf6QmjWINHbt04chQSQ9JDsIS2
         uxCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=r7o79InPUmwM7HiQfa8vAsXtZN0KXGwvJXS4bf7f+2U=;
        b=0J8mC6j5jfFg8PCIudUmkpjMNyc6RL/aIJjcQqktFx38Dq2BjBS7smLB4BiGuSwj55
         iHP8pxP6CDYdpD4SSN3BN9lFgSEhAupsT0ztgIao5vgDz3/czvbB0Fdnvjin+Gw7j3BP
         powHM6ggEdt0jVK8RSqk3AmKgAFeeYEVxJDNbgJ+aa6gyTuL35LZX40WPLm5JEkDgs4V
         BA/wKNvKfmxxfZrbpHuCYvd+txKDrBU7rmtB/9YHZmdvk80ySo1jMAJIIlAgfCGiHfdX
         8YM3iCew3j6+RUpDpca3MVGTYV1u7POBdovwTzBFtOc8cyyn6jnKDM5MFaALEWJo5vrC
         5PRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id y84si136825wmd.0.2019.03.12.10.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:39:13 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 72703D27B;
	Tue, 12 Mar 2019 18:39:13 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VigfVpEyc_P; Tue, 12 Mar 2019 18:39:12 +0100 (CET)
Received: from function (dhcp-13-99.lip.ens-lyon.fr [140.77.13.99])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 80918D27A;
	Tue, 12 Mar 2019 18:39:12 +0100 (CET)
Received: from samy by function with local (Exim 4.92)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1h3lMt-0006pN-Pw; Tue, 12 Mar 2019 18:39:11 +0100
Date: Tue, 12 Mar 2019 18:39:11 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: speakup: Remove an unnecessary initialization
 in function
Message-ID: <20190312173911.dttfxifz42x2weaw@function>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312173730.23281-1-madhumithabiw@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Madhumitha Prabakaran, le mar. 12 mars 2019 12:37:30 -0500, a ecrit:
> Remove an unnecessary initialization of local variable dt_stat in function.
> Issue suggested by Coccinelle using ret.cocci.

dt_stat is a global variable, so this is not the same, with your change
it wouldn't get written to.

> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decpc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> index 459ee0c0bd57..3ad49bb93829 100644
> --- a/drivers/staging/speakup/speakup_decpc.c
> +++ b/drivers/staging/speakup/speakup_decpc.c
> @@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
>  
>  static int dt_getstatus(void)
>  {
> -	dt_stat = inb_p(speakup_info.port_tts) |
> -		 (inb_p(speakup_info.port_tts + 1) << 8);
> -	return dt_stat;
> +	return inb_p(speakup_info.port_tts) |
> +	       (inb_p(speakup_info.port_tts + 1) << 8);
>  }
>  
>  static void dt_sendcmd(u_int cmd)
> -- 
> 2.17.1
> 

-- 
Samuel
    if (argc > 1 && strcmp(argv[1], "-advice") == 0) {
	printf("Don't Panic!\n");
	exit(42);
    }
	-- Arnold Robbins in the LJ of February '95, describing RCS

