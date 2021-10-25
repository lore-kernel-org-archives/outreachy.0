X-GM-THRID: 7021822549853995008
X-Received: by 2002:a05:6000:1107:: with SMTP id z7mr8206209wrw.370.1635154734270;
        Mon, 25 Oct 2021 02:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ef8b:: with SMTP id d11ls898517wro.2.gmail; Mon, 25 Oct
 2021 02:38:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz35PDDUA1KoG7R/TTlmU+lRWQUtTU81IAjiEVXRZDx4WUb75+x/+ZUPWMMMnyF6qDbDJDK
X-Received: by 2002:adf:9dc1:: with SMTP id q1mr22082771wre.13.1635154732880;
        Mon, 25 Oct 2021 02:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635154732; cv=none;
        d=google.com; s=arc-20160816;
        b=n7QpJg5QWySQWkxcuw8bDu/8DyJqPx8ZbuJyfOIBRgdl9n4RzONVB5y+Ly+BmUinF3
         7ozLhtH/yWHn9IiJL+IUNW7YH7x4ycNjIsSiLc3aSLCLsIfbXBAYnfaB8yOJ1OH4k5OY
         9YXAuqFfAD3F4M/zF5t7Y+URNeT26Jek8QFcwm933H2p2CSUIn5KS7/TLG3QGP5zhMlC
         JpZwfb542gk+8sFEFCoEsC5dH1W5CXEXL2SclXaBf0E8DG13ixmeVfCJU168mzNXqPTL
         klygJYFW41UJWcnVAxFfCCpK/0CmIO4j4ph6LfxDwvCR43WPiDAA9xeXR9JKltIk1067
         Ksfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=j2/0T+iSdDtcRBJSHhWbXXR9G0R0VHtIn5iZtNGvdpY=;
        b=ZVemBA2VDKYg1YfiNDx0wK10+5nwrkHFWPgakNroBIexuR65jfA0ReIHmA9ROJibl/
         nBFRr/l6SppieOpn16b9u6UXh77gDBhUqOLY7nYY1o6wyvtEkah6tu0ikqeUb17Mr0Z0
         p4mkJa4mmzCKy/phsHqxafvXOgdLqzRYvEVFSy/zsUuAFc/cwaYYAYoJTOHRMofDmUmv
         FBxY+wrIYCwdngOR8EFpU/Jy7WmbGubSyWIzE2E2xVhuOjHRHelXgU+s9TMoBmBYGZNo
         sd7nmJRVjCbPtvdHo+LD/c0IWs+y4owlwsZNUXSJqu6db3c83ymMcaDg4DT+TqTILUSi
         FNbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=O8IHmCxE;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id j23si786678wms.0.2021.10.25.02.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 02:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=O8IHmCxE;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id d10so7594331wrb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 02:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=j2/0T+iSdDtcRBJSHhWbXXR9G0R0VHtIn5iZtNGvdpY=;
        b=O8IHmCxEqS6oDsG6t3xo1/CJc/mKQKQrKBE5I0MDKkQGd03S7OqsFskcTN/dsmOWNR
         zTybvOnp12d3zvtbq0kzMNc80oUxNQlH6SiLR4G4PUQe+9fyKLHiE+QjHnxB2LT1uDZM
         aMeiJaIIwsjLS1pRgtWUeFfZOyZGA2P7T6lx3YFlIVWFCaA4gbSZHwYulHYFELdB+YPU
         4ZhqrdqRwXram+3kTOs+Pctv8HtyIeM3xcbOkEwZjL9FA7AwVhobHrMR0pSwObfT990U
         qQQKhYLDr6/gONsRQZcKMb3gGBND4mxKesrP2atjQclfE/kHB7OtEb4gQ6YYl6JBUk2z
         CHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=j2/0T+iSdDtcRBJSHhWbXXR9G0R0VHtIn5iZtNGvdpY=;
        b=JVkkKgHvBS3zJ/ZjtYC1HkTcvvx1gRD874iYDMGaR3lMuUesF7lWGsNRVhCpwtkMaQ
         reRndp3XQ3UluQCWgc2zW4Q0rG/nH4aieLbp6KWL7q/XX9m3fXJd7IxDsx4A0MFxYD0/
         GzZzPRH1Yhl5GawJGuBDuEnljjAMkMIf6hHy25E8NKNsBkRALhb1poRg0bbVs4/A/BRc
         XckJeG56ay93Q6urT3LMZhu0EqCTxZqRxzfxLNi+Ate0VpZQzyMUcd+w7RJuHSL58QW9
         8earKRum5pU1hJbU7LnTq6Fgj3ZFVquSy60JUjl0NUFscJj9BudSNQBIyEBFI4JK3ZDc
         vvDA==
X-Gm-Message-State: AOAM533u1CLqPxuFqpWv9d50STnoNOSXlX0rTiMEpd4ewN1C85XuE7IC
	3bTfdGcLmmb9F/xLJmXC/eI=
X-Received: by 2002:adf:8bce:: with SMTP id w14mr7800346wra.391.1635154732530;
        Mon, 25 Oct 2021 02:38:52 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l20sm21094729wmq.42.2021.10.25.02.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 02:38:51 -0700 (PDT)
Message-ID: <4a0993774f75323c803f7b07ff9825d7beb6d95b.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: vt6655: Rename
 `byInitCount` variable
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Mon, 25 Oct 2021 10:38:46 +0100
In-Reply-To: <20211022164011.GB464908@alison-desk>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
	 <53430b1183324f6a715999792a15df2ea6a3e206.1634826774.git.karolinadrobnik@gmail.com>
	 <20211022164011.GB464908@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Alison,

On Fri, 2021-10-22 at 09:40 -0700, Alison Schofield wrote:
> On Fri, Oct 22, 2021 at 10:37:15AM +0100, Karolina Drobnik wrote:
> > Drop Hungarian notation in `byInitCount` variable in
> > `RFvWriteWakeProgSyn` function. Change it to use snake case.
> > 
> > Fix issue detected by checkpatch.pl:
> >   CHECK: Avoid CamelCase: <byInitCount>
> 
> Hi Karolina,
> 
> This comment is for all the patches.
> 
> Commit msg:
> We've got plenty of space on that line, how about:
> "Rename byInitCount init_count"
> 
> (I say this because when someone searches by the oneliners it's
> nice to give as many keywords as possible - within the line limit)

Ok, will do my best to include it in my upcoming patchset.

> Commit log:
> The log (why this patch is important) seems to be saying that
> snake case is the fix for Hungarian notation. I don't think that
> is completely true. Snake case avoids the camel case of Hungarian
> notation, but we are also dropping the type descriptor which is
> another signature of Hungarian notation.
> 
> Perhaps this would be more direct:
> 
> To align with the kernel coding style, remove the type from
> the variable name and do not use CamelCase.

Ok, I'll use this format from now on.


Thanks,
Karolina


