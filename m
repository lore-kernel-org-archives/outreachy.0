X-GM-THRID: 6525478094169440256
X-Received: by 10.223.198.82 with SMTP id u18mr36246wrg.17.1519367729468;
        Thu, 22 Feb 2018 22:35:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.134.75 with SMTP id 11ls1649381wrw.7.gmail; Thu, 22 Feb
 2018 22:35:27 -0800 (PST)
X-Google-Smtp-Source: AH8x224lyBtUSaj+cfoPZEZ15lhgRfpDIh9/uMZIgwqgPc6a9nMHv59PFSJXCDI7ubun+jKCyPqW
X-Received: by 10.223.184.60 with SMTP id h57mr39992wrf.0.1519367727060;
        Thu, 22 Feb 2018 22:35:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519367727; cv=none;
        d=google.com; s=arc-20160816;
        b=UZAz7aDczQ67ZgN32Dbj0+TVSI7k2RWIPnhsQ8Y44rB9C8m4rYamSJ/Nkd4FzuE5Tg
         s/QPFipiNRpiLCULuFHEl1CBiohLJM9V5ruPDOFu6fxdpapbSVn/LQvdOZ3Yadx/ghdO
         TrCMx82yltDy9gljV5hIB2SsxuLqxwrgxR5KldwTrPpLUyTXglrBgfC2uhjvkz619oFw
         Rqoa8G/2sNZ3PG1I73Oxftr+DRExXgmQB8Jt/+bROEaSLyGHQfUxgC/Qvd4nUmWdEnhN
         z4mQqBQN5MFyLQgsToo8f9gelu56UGoYF/d8SKBKWs1Wi/xy60eRqBPuPOvoKd0sjnIn
         sSgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=mhAzOS6gXrgRHO3NZjtdtpPPTai7Bh9i0SQ+63s1+pI=;
        b=hly0jCNFbAcjEGfvU3xUPRQhYXvpH+shErOTI1lPkWVyofcfo+UFc4NGSAE/DhURrm
         U+T0ApUKGLW30qWux2uwQr+CHg3kAmY8UTFYWyo4j5VwpX3VxYDCsd0fOnVbBVm/Erwx
         9v58K3dF2cf6yFg9lChs1mcl2RCiwgj8veXbe8NoGKXCOGu5LFIt5JN4hcSZ/tnoZ91Q
         6JszoQ4eo2CsA+I7/1NykdHljl3Re4SRrrkKdKS31FaDZl1wGTlEMzFp3E72g8d72ZhO
         MhPRVY9cAT/6GyCJGfyxIBejSdhCcwMmgkG3D5/SvdlgA1vEE7FL6Zxg/S5Nuv7DWTn1
         hNig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v8si113050wrg.2.2018.02.22.22.35.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 22:35:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12258-90.w90-92.abo.wanadoo.fr [90.92.71.90])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 06020133C;
	Fri, 23 Feb 2018 06:35:18 +0000 (UTC)
Date: Fri, 23 Feb 2018 07:35:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [ERROR] Make won't run
Message-ID: <20180223063516.GA12267@kroah.com>
References: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Feb 23, 2018 at 01:57:13AM +0530, Nishka Dasgupta wrote:
> From: nishka.dasgupta_ug18@ashoka.edu.in
> 
> I can't run make because the process exits with error messages at
> various files. I reset all my changes, manually undid them, and
> fetched and rebased the origin again for good measure, but even now
> files that I haven't touched (from init to android to other files in
> the same directory) are causing the make process to exit with errors
> (usually an "Input/Output Error" in some .o file). I don't know what
> to do and would appreciate any assistance. (In case it helps, I was
> removing braces in a single line if statement on line 290 of
> drivers/staging/wilc1000/wilc_wfi_cfgoperations.c. Before that, Mr
> Kroah-Hartman had replied to an earlier commit pointing out that I had
> committed files that had no business being in this kernel, so I tried
> to roll back the commit with a git reset and then fetch the origin
> again.)

Please provide the exact error messages, otherwise it's a bit hard to be
able to determine what is wrong with your kernel build.

And you have built a kernel successfully from the source tree before
modifying it, right?

thanks,

greg k-h

