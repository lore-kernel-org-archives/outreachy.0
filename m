Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928F238FBC
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 19:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marliere.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=marliere.net header.i=@marliere.net header.b="e4z2yeGG"
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-57e4459aa29so1302977eaf.0
        for <outreachy@lists.linux.dev>; Fri, 06 Oct 2023 12:43:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696621421; x=1697226221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucWoIUTRyrC1qudbhkqCiFC3VNX8+bqF/XKzYlAgnEE=;
        b=gM219shey2/MbV/xmjC3U5ibCXORfE8wltbnlqco3VrjOp2CEcC1hb9RiIaYtU7xEg
         yT9XiGRRmB+FAN32OvVWC0p3gIL4CiRMVIGINF5sBOg9+ZkAACau2eH+9nqfo4GLmssg
         CuvihuMkubnLy+7TsdaTjBfI9Ee+7YuqEAc0uN6Jxq+meo98Imwvl4i3Nmynfeya1lBT
         fWox0BB1j/joPayUPFmyTOWDKq2BIwunUM9Lys96lYKimeokj50IVTOyeCPL9WsviAoq
         CS7JiC+pEEuig+SskxFYd5DXVuKQ8kNf5WrSZR8BwLSP4YWqypbQJnpkdrNtaYKEj1q6
         JVFA==
X-Gm-Message-State: AOJu0YycyLm+7rAweX4vrqGPIKaSnYv5NnYtZ2YByN9pHBTxhe6XYjeW
	y+I3l0eKW7A/CpsaU6D/Z+M=
X-Google-Smtp-Source: AGHT+IEfXMI+xS0+ySSSOeaa7b7vKAGTc6EZtFCQw1O/FOhsImdRbWrckHarE3KMKv9WK4fsBfIbqA==
X-Received: by 2002:a4a:dcda:0:b0:576:bbf6:8a8e with SMTP id h26-20020a4adcda000000b00576bbf68a8emr3320556oou.2.1696621421532;
        Fri, 06 Oct 2023 12:43:41 -0700 (PDT)
Received: from mail.marliere.net ([24.199.118.162])
        by smtp.gmail.com with ESMTPSA id b3-20020a4a98c3000000b0057b38a94f38sm499180ooj.12.2023.10.06.12.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:43:41 -0700 (PDT)
Date: Fri, 6 Oct 2023 16:43:39 -0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marliere.net;
	s=2023; t=1696621419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ucWoIUTRyrC1qudbhkqCiFC3VNX8+bqF/XKzYlAgnEE=;
	b=e4z2yeGG4frfc8+kfLrNXR8BB0rI2rlhWKZoNK5bwazWUOZWU76k+43uw+bEL2Lq5m1QiO
	1KcezEx9ygXYUNQGi0FayaBTCiexSI90zcmIjK7fG6qzrSImNpAQiDm3qEqzBtNBeCHAhP
	v90EGLs5PbwAZJoV4ITxLWBP99FFRuGlWfRcM5IZaYMslCeT1630VB/IlCGZ/TsxjiJZUe
	8Hb+flg0625VJPe70POveaDRmnn8U1aZw3mDmFhnRUzrDoZ/LNLL/cXKPrmeu/PoEaiBqc
	fBUSZaEJ9gU1bV2EKbETRPyo/exfqrCkAcNTGgjMmMEKX1VjdxStgCtjjSM6vA==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=ricardo@marliere.net smtp.mailfrom=ricardo@marliere.net
From: "Ricardo B. Marliere" <ricardo@marliere.net>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy <outreachy@lists.linux.dev>, 
	Julia Lawall <Julia.Lawall@inria.fr>, Andi Shyti <andi.shyti@intel.com>, karolinadrobnik@gmail.com
Subject: Re: [Outreachy Applicant] Help needed
Message-ID: <yn3c3p66kibwp7rdw4wwfldbevw57ady3md2lqlvlkwtyxlv7c@kb2tr52gj7l5>
References: <CAKrXSsZsMNxp4BmkWXzza-HYcPdyFYootjYjsz+tMowVb-pGEA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKrXSsZsMNxp4BmkWXzza-HYcPdyFYootjYjsz+tMowVb-pGEA@mail.gmail.com>

On 23/10/06 03:22PM, Gilbert Adikankwu wrote:
> I need some clarity on a step in the setup tutorial.
> I use a Windows Subsystem Linux 2 (WSL2) as my Linux environment on my
> Windows 10. I have followed this "OutreachyfirstpatchSetup - Linux
> Kernel Newbies" up until the installing Kernel stage. Now I am
> confused about how to execute the next stage "Running your Kernel"
> 
> It says to make a grub boot menu and we are asked to run this
> 
> sudo vim /etc/default/grub
> 
> when I ran the above command in my WSL2, I realised there was no grub
> file and the command just created a new file, is that normal?
> 
> this was the output of the next command:
> 
> gilbertadikankwu@GILBERT:$ sudo update-grub2
> [sudo] password for gilbertadikankwu:
> sudo: update-grub2: command not found
> 
> 
> 
> Please advise
> Gilbert

Hello Gilbert,

AFAIK you're still running a Windows kernel. You should either:

1- Install a full Linux distribution in your host or;
2- Emulate a full Linux distribution using something like Oracle VM
VirtualBox.


-	Ricardo
