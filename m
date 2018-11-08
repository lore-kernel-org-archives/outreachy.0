X-GM-THRID: 6621630836870479872
X-Received: by 2002:a37:4788:: with SMTP id u130mr4112039qka.60.1541719215324;
        Thu, 08 Nov 2018 15:20:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1494:: with SMTP id l20-v6ls1546186qtj.0.gmail; Thu, 08
 Nov 2018 15:20:14 -0800 (PST)
X-Google-Smtp-Source: AJdET5cBsAFAktNZ9gDz3tHWpx3Z3uxVGj0wrlSJBHQvBffT++7eFpIbvDWzO2DhCEsE5WN3p+do
X-Received: by 2002:ac8:29b3:: with SMTP id 48mr4471229qts.11.1541719214738;
        Thu, 08 Nov 2018 15:20:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541719214; cv=none;
        d=google.com; s=arc-20160816;
        b=gvcl1VsO9ARX36zdrBifJ+IXR2z1QmLWGpUG0hOK1/ZD9aS+0wqqBRoyfz8S6E5zpj
         nAPkj6RdDOKO988ntZuVMK2vhSI7jq7OXtFjVK1SayTrVuoEaff5d/eYNze44WhF6HOM
         3wWS5towznW9qjHlkhrRKVE/wsvL0HGnJeDthas2BEYvqE+eTtkGMK4CnFGVHbJWePUf
         8JoIJbMv9A80JzPRYR1g20Aslwl/R7rUOp1+TW59OTsQP1myOFSGb88gCOJCYel3/udt
         NYnvrxnhBy5lHxdO6jBX76QmA199ElPbFYm5VDG44HGje7QsYVNBNi1C862QZ2gKxmWj
         qIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AgSB3XmIlEwTdY8V2T2rLWKB/OIH9RSfc0PcHyKzC1Y=;
        b=d8O9eCA8IMG/fywo9eogG3j7bkfwAR+XIAa2+Uo89fRMzIjFbonMdCHpy1yKZ+pLPu
         hzT+G2d1OoojdjhYQbWRcOJqqHpbmwU8h9dKRSiy0AzLetGPCBAsRw6scfJ+RdU1QmWn
         c8Jhqqk778DYBHHvBGVRJzgI0zjrwsVv975s/lgMjMgaGmCrd5lAIddR9V1rKU+ULWVV
         /0IPt7LXTftfbp+opL4bybMKPhN3zOskiu0AUeYn8IdkWPTOvBlJL6+RSNX+eUqPZCRj
         InIlJqlH8mtpK3ZCba2gX0/6qAloOaxYeuzF32l/UjuCoOK4OEQzq8E7dwQF7HuS1Wkm
         sVig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d2h7Myzz;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q49-v6si295386qte.3.2018.11.08.15.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 15:20:14 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d2h7Myzz;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [208.72.13.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 83FD520844;
	Thu,  8 Nov 2018 23:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541719213;
	bh=AgSB3XmIlEwTdY8V2T2rLWKB/OIH9RSfc0PcHyKzC1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2h7Myzzbdog1Pzjcs7URrPcQZZftxrdPdlyU+YCWP2lyoHRRVKJ1mcnzd5TZRCFI
	 f0HTrhgxsPdFgFK15r1aq6GEXreZLtR2Zcuhyh2pkvGN+UkMD3U8V96IptoZZf0UzK
	 6ybZ1Nom66OS98LF413hIDHF2NRWSXq7lLFlnu5w=
Date: Thu, 8 Nov 2018 15:20:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jules.octave@outlook.com
Subject: Re: [PATCH v2] staging: davinci_vpfe: Remove one blank space
Message-ID: <20181108232005.GA4007@kroah.com>
References: <20181108230918.4477-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181108230918.4477-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Nov 08, 2018 at 11:09:18PM +0000, Irenge Jules Bashizi wrote:
> Remove one blank space complained by checkpatch

That is not what this patch did :(


