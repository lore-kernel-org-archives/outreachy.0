X-GM-THRID: 6808044843867045888
X-Received: by 2002:a17:90a:1946:: with SMTP id 6mr5355122pjh.42.1585161400591;
        Wed, 25 Mar 2020 11:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls2492692pjo.0.gmail; Wed, 25
 Mar 2020 11:36:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvO2UQdRG2PGA5CrIwFXgIz6Gv08jm8OhXbOJXXmzBkUU6Tljqtz6IueeSskT/7S6dh2yXs
X-Received: by 2002:a17:90b:1b04:: with SMTP id nu4mr5103149pjb.81.1585161399109;
        Wed, 25 Mar 2020 11:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585161399; cv=none;
        d=google.com; s=arc-20160816;
        b=IpPj20eAkNCglbTqJXtLmkgpIcu/hjkOIFLNUh9uWRu02g+0KMYC3lO9qwgIejVvhG
         yWiQRV3xVAywnUIXfoM4ZKJnSkK+UYkfngYInQIMzaknl8L0hH1cABc5uMyT0IeswXng
         SVw3B9NquMvMGv9kHIoBPGvOFfA1WYwu20ZZzSa5mxSUSOQ5OYq5LtfLrc41lK276KyD
         Sm6P46GJkwy2Iwj4w27KkeyC4aSLYrJ6eIfe8Mb/Boy/emVEY08Z7kkV2ZJY36B8VLR7
         lXRoUQ1gPB9vN8iCQ0bAecA5mqqcDfG1z3UK9YXDqjgSAAn+uKAGUXEVxWP4jbpxaOMc
         H7Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A7CSNoRYyHrqRgpMIAii2las2yFrdsWSUxgHyL7DVCI=;
        b=gOKYsu1akyLspKcXF9MOa1+EmhGkDQuttxWA/mHDo1th4RDIdOIVdmKz7re3DzA1JV
         mW9UWPfNwtJqumV2992mWQK4vmAX/WuO7XmkslRb7DONS1b45VoUM2qQBleqczYXbwyb
         LtAzz/o9pbrpjyVPzQYxeegOvyyKH7ZeDjIjgiqhCyPc3K6Hl9rGLXtolq25IuNkDvt4
         yYbISvn2YJEkykBG9goyYG2qUSMWvuvos5rcrALORfSF3Otx6mLYFjIUukXWrqpOFqJA
         rHgTRpK3f9kGenexSE9xj6f5Zjds+64pUaE6ElsVE32ZIvqHFPTZOAT4HOwAIPa4vC7a
         1/hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gYxKWE8b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m21si297003pls.5.2020.03.25.11.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 11:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gYxKWE8b;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E93620777;
	Wed, 25 Mar 2020 18:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585161398;
	bh=XNaxk4kl5JifETixZo+9um+wX+XJrl+bfte4n63ILf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gYxKWE8bKNsObKBVE72TDIfoTSLMEQ7Qb1bUXW4UyKVtZXytizF4HuGEPVorzfhKh
	 wsvgqelbg/+9UQsqTJEHyEy7NIGN1vjUZloiwG17WbZaQmYBekjyMWM9DZuqCpA4AS
	 P2Q3nD0A3UpKKrikHulklWz4uNEVfkdlNlCDbOpA=
Date: Wed, 25 Mar 2020 19:36:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz, sbrivio@redhat.com
Subject: Re: [PATCH v2 1/6] staging: hp100: Properly indent the multiline
 comment
Message-ID: <20200325183635.GA3813636@kroah.com>
References: <20200325141540.41877-1-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325141540.41877-1-debsoumyajit100@gmail.com>

On Wed, Mar 25, 2020 at 07:45:40PM +0530, Soumyajit Deb wrote:
> Shift the end of multiline comment "*/" to the next line.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
> Changes in v2:
>   -Remove the blank line after the end of multiline comment.

Where are the other 5 patches in this series?  I only received patch 1/6
here.

thanks,

greg k-h

