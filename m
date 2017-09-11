X-GM-THRID: 6463854288984604672
X-Received: by 10.176.17.234 with SMTP id q42mr7835127uac.21.1505150556290;
        Mon, 11 Sep 2017 10:22:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.21 with SMTP id j21ls3376010ioi.13.gmail; Mon, 11 Sep
 2017 10:22:30 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7U2MFRSMBnAWhBoHF2eWvLE8VvkvqA1r6cDiVbbTtpTA2XXU+wBTi3celzCaLOjg3FNxpy
X-Received: by 10.13.208.71 with SMTP id s68mr8043531ywd.180.1505150550479;
        Mon, 11 Sep 2017 10:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150550; cv=none;
        d=google.com; s=arc-20160816;
        b=1JpLOiPPTXB+zqnX5Pb6fMctc7F6j3uYQXywJGh3ZouFmTRgsWdYpx+l0ulubVYLW2
         nY7fvR/hIyHk5m39hke20lBbHAMhouA5iu9xOKNRXo79ewt6uw0yeUACIjgtBx8WWUeP
         DCl4C8nmfc0dhq2QKcu+VGYQNp/DUbfzztOpQwiVDhgnbH5dx6yXvfiQwz1OkbM/ny5d
         wuSLifpdnESAK9SQFn2EABm03/DnnNZubOtMN+rR5baUmBQYNF+25Q/i3rDnC5L03Pu1
         yykzg0UYSLCUF37anGPRswCTDOMZJxA34lu47LOT0+YRDWgep1zSAa1NHfrdkqjCrggY
         rpVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=llG1CSv9Ldu3v4755MsbK2yEd+SFKo84tg68tyew5cI=;
        b=aAHUMMhxS3h4rdaYOI9Y3Yofslx+a7eWWuJWwi1amLRyyQzcYBeK1E4PLItDmFlYH6
         c9wD4J/im9sf/sVSlB2wnZWRGOHDpEQcfaj4GgZgAnLNUCKxJfP9bfyxtYqp0LvBcTWJ
         UJ6JdsyQcXOuqQSxvIZSm7EMwHXiehNXviXQKdrGbOCFPgcI/Fh67DnBySkgY/kq8RrP
         wF4moUlW1dUK7TThfU2Lh6+LRQTHjGSkBk26ItAOwL/kqjs+MhvVB0HcPifAp4sI2GcV
         1h7D5yKXMM89mNJBAm6/0FiplSvAZGQxGc/xkILq2Rswa9WoiYHodrYTHUe0jZgjvaZA
         qsOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=g/YVsrfR;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id v124si717391ywe.5.2017.09.11.10.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:22:30 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=g/YVsrfR;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 131E720B3B;
	Mon, 11 Sep 2017 13:22:30 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Mon, 11 Sep 2017 13:22:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=llG1CSv9Ldu3v4755MsbK2yEd+SFKo84tg68tyew5cI=; b=g/YVsrfR
	93ffOeMgmAS2X/n3o3wXlAbSm4bjmGi8f26SdwJljuyG/y8oBUIUgJYqWpLRLa4c
	OolA0xxJt9iBy8h78mhO9S1l5Et7+j3BYY4zuWPHyY8BPawSJat6QJbAEkLY5lUk
	6i4FOLVQvkpI9jG4OLtS9ulSBCEHSrKvC3UaDfZE6Yp4fC9eru19lltly0Gqrdp+
	jAMdMvyMKlRe02LyxG09KWDcsZ+SZzvCvYymYGz4bLxdLJsuTEFkMsilFPKkjIgL
	ogd+sOjDgoWTHNTl4c/1rKavrGwPbbUJKq4aFBuj+zQ8VFaBQ0joEkbhlr+Efxbm
	XYJylxE+07W+aA==
X-ME-Sender: <xms:Vsa2WfNnPHZkHqsb0JvcL7aUmM8v14Dkg1R5-rXVpK-rcrgS3LVyDg>
X-Sasl-enc: kdrsaHFzzhk91tzNxuA9Er/g3jCmtNxgwLyY6U0XWVDC 1505150549
Received: from localhost (unknown [12.145.98.253])
	by mail.messagingengine.com (Postfix) with ESMTPA id A69077F066;
	Mon, 11 Sep 2017 13:22:29 -0400 (EDT)
Date: Mon, 11 Sep 2017 10:22:27 -0700
From: Greg KH <greg@kroah.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
Message-ID: <20170911172227.GA21108@kroah.com>
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
 <7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 11, 2017 at 10:10:08AM -0700, Srishti Sharma wrote:
> 
> 
> On Sunday, September 10, 2017 at 12:25:54 AM UTC+5:30, Shreeya Patel wrote:
> 
>     This patch removes unnecessary 'out of memory' message to make
>     the code more efficient.
> 
>     Problem found by checkpatch.
> 
>     Signed-off-by: Shreeya Patel <shreeya.p...@gmail.com>
>     ---
> 
>     Changes in v2:
>     � -Add a tab before the return statement.
> 
>     �drivers/staging/rtlwifi/rc.c | 4 +---
>     �1 file changed, 1 insertion(+), 3 deletions(-)
> 
>     diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>     index 65de0c7..779a5c6 100644
>     --- a/drivers/staging/rtlwifi/rc.c
>     +++ b/drivers/staging/rtlwifi/rc.c
>     @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>     ���������struct rtl_rate_priv *rate_priv;
>     �
>     ���������rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>     -��������if (!rate_priv) {
>     -����������������pr_err("Unable to allocate private rc structure\n");
>     +��������if (!rate_priv)
>     �����������������return NULL;
>     -��������}
>     �
>     ���������rtlpriv->rate_priv = rate_priv;
>     �
>     --
>     2.7.4
> 
> 
> After you format your patch , open it in vim and try running this command :%s/\
> s\+$//e �
> This removes trailing whitespaces , this might work for you . It works for me
> .�

Oh no, never do that.  A patch file needs trailing spaces, that's part
of the syntax of a patch file.  If you don't have them, the patch will
not apply properly.

Never edit a patch file "by hand" unless you really really really know
what you are doing.

thanks,

greg k-h

