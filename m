X-GM-THRID: 6803736049205903360
X-Received: by 2002:a17:906:25c:: with SMTP id 28mr1973852ejl.49.1584410389041;
        Mon, 16 Mar 2020 18:59:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:58a:: with SMTP id 10ls10183244ejn.11.gmail; Mon, 16
 Mar 2020 18:59:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuTS33DLRWV66QbQ9/0sRGGIugeMR0/Y6AJ72bvmeZWnRdI2ESFk1RF56eHH0A9sxp4crY0
X-Received: by 2002:a17:906:5ad5:: with SMTP id x21mr2033293ejs.177.1584410386812;
        Mon, 16 Mar 2020 18:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584410386; cv=none;
        d=google.com; s=arc-20160816;
        b=hBBheys1DlhxvEcve9BrSpBKqEE+/DpbkpH2tE/bQlQ7m6+OS2r9TMuK0gi2H6rqIS
         0MGbtQXFw0LlXhcJVxQb0ArjmFfhgZ7vpEdk6EuS0qL79D8FtiS4pxgkqhRydPhOHvH3
         2U+7FSwTfU2OMxuC3EhpmGcptfdiJqyrlStOj0T0rXeUrOtc9hK6qTNLR2EtA2xnpv6q
         KmkH/QU2nH+d7H0zT5jtgwm4/DZyHwVw6ytwMSIDpjgJD/jRFdUBDG3V2sctsBtqe+O5
         TGuk9CGdL1y+8de6rMMn6DvUoGjmNvJuSWwRlwO95MrQLLpNwXg0pfS4fqRGr1WPkJa3
         yN9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wvkuLN7pWiLMSGyj3yc50qq8CgL+PvtqTr9JTdTYqI4=;
        b=kpBCs6FOsJNETbHHBBSS+ccIX8Pkptt29dB1flntFddO0uKRaX+krixTDn1ozLaBfW
         uOjn+lUeIZRrGKIa44USZDJw+yP8YcUu1hVNMO7KhTOAxmH7uKSkAhe8Fwn3H+rMhqoF
         Y9JDmXQBjNg2PLgu1mLtrV6PiamsAhL+kjEE2F9KbK+B+pXstbMlxjvJTbVz4ceF8aUO
         2vWDYtjs0V2gWQ/Wc+8ALInPdGlvsnRjpcZruFiWrPITI4O3iuobMuTd7M5u9nKw7SwD
         /R6augytl0+6g5b3241MGP4hrTi74Jxg4Ul4/MI+vcdTDm3c29/SR7M0js8ulp98tlN1
         vZIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d7si70774edo.5.2020.03.16.18.59.46
        for <outreachy-kernel@googlegroups.com>;
        Mon, 16 Mar 2020 18:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 1085 invoked from network); 17 Mar 2020 01:59:45 -0000
Received: from unknown (HELO lily.local) (vkor@vkten.in@117.209.255.139)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 17 Mar 2020 01:59:45 -0000
Date: Tue, 17 Mar 2020 07:29:38 +0530
From: Veera <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Better Fix of
 long line in makefile variable
Message-ID: <20200317015936.GB5977@lily.local>
References: <20200313165018.GA3172@tulip.local>
 <20200317015030.0de5ef50@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317015030.0de5ef50@elisabeth>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Mar 17, 2020 at 01:50:30AM +0100, Stefano Brivio wrote:
> On Fri, 13 Mar 2020 22:20:30 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > A simple fix of long line in makefile variable assignment.
> > Found using checkpatch.pl.
> 
> Same comment as v2 for your rtl8172 patch: I think "Better" should be
> omitted in the commit title. It looks good to me otherwise.
> 

Please see my reply for rtl8712 patch comment.

Also should I make a new patch revision and send again?

Veera

> -- 
> Stefano
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200317015030.0de5ef50%40elisabeth.

