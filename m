X-GM-THRID: 6805874038364176384
X-Received: by 2002:a25:e792:: with SMTP id e140mr4131656ybh.187.1584619792567;
        Thu, 19 Mar 2020 05:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls746520ybi.0.gmail; Thu, 19 Mar
 2020 05:09:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvaRUCMPEB2IRsT924AAOnQ5II7lMHO8P1oLW6MNPBircT4JI9ZFkmUhAwVxUJqDA0t88/d
X-Received: by 2002:a25:7189:: with SMTP id m131mr4281136ybc.344.1584619790992;
        Thu, 19 Mar 2020 05:09:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584619790; cv=none;
        d=google.com; s=arc-20160816;
        b=glk42ChIof2b3D8ccO/JIqF+9pWgJl6CwmKQMsFUBvE0wigD0UatqI0pRTuOv3QTyG
         ISx4E0c3KVN/UD+o0qNQS1xJO3trRmL3vBIRI9d64l09Fl/HUDx8bqSRVX4FQ+S2EfDy
         KffthpeaxlMzrPe5HATrL6hXX7y1ml+ZAvh2bR61ZiXA2BYKGxYIaL9rYAcP4EHutcrI
         Dwht7yFOdLGPivBOZ425i52jzc6IVXwbcbAj0UpKpQ4+jzop6ThFCFw0ztbIV4Il9pLC
         +WClM5+V/i41JtX9J8ee9niXk9kb2h/Y6V4SEWLep4EoErH6SrveMVmuGe68uzplJjbh
         XyyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LxDzhqChT5hDQDBEzotw5Hy2zvJZOPA1AL5NFY4Cgf4=;
        b=YeI0wnPHvrvvDHVO2l/zyMNSv/u0plwXNfSETtE3Aodn/Tw82eT5bl/xD2Ja4/KShz
         NEJtOo4c1H5DGX/XgzVUf+BEyDdL+6Ybw/X3t3BxQSn7JlG22jtFXMnCF+MbrIo4/3D0
         a3MxV1jKRQM8fhZDV8oJ0bdrFvOZyMDWQM4OAA7mbtikFV+qqfvmEkFdfKhadpxuvvBD
         a95qXONA1m3pryR0W7VqgyDrHBy7rgkj5RiQVvstWGgnVEqCO2exBtIGMHpK14PPnW/W
         pvr0Ft+Tf7Us64zI44AK7ONxcal3zrpUhyLZ0CdshlfaTOl/wg5uPjJjp01berlglPeA
         30sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JLLYORbM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si116882ybs.4.2020.03.19.05.09.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:09:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JLLYORbM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7668720663;
	Thu, 19 Mar 2020 12:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584619789;
	bh=uuLiQq0mO9JcVuqTPXpJ41fguAxfPVSiYmCWEvCzdPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JLLYORbMufXnUFtRmrg7Y7JWAoUlwf3bLyKMFzOyX9OTXUJLHGw/LyejaAzGJbyUX
	 IUsjRflDa5piTrii4hCiLVIEkBp8XXwMVDNuuA1PC9os6fivLRi1DpAa5btotJyv2o
	 4cn7hzt76ouHkUI3NnWx00QISmkIeY4uu8jD3vl8=
Date: Thu, 19 Mar 2020 13:09:47 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [RESEND PATCH 10/10] staging: rtl8723bs: hal: Correct a typo in
 a comment
Message-ID: <20200319120947.GA3801887@kroah.com>
References: <cover.1584514678.git.vkor@vkten.in>
 <10611db3d4af017cd3a7d80ef2fc6f498797eaf2.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10611db3d4af017cd3a7d80ef2fc6f498797eaf2.1584514678.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 04:36:53PM +0530, R Veera Kumar wrote:
> Correct a single typo in a comment.
> Misspelling found using checkpatch.pl.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You have many patches in this series with the same identical subject
line, yet they do different things.

Please fix that up to be unique, I can not take this series as-is,
sorry.

greg k-h

