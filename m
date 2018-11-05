X-GM-THRID: 6620380698493583360
X-Received: by 2002:a24:2c11:: with SMTP id i17-v6mr6466274iti.6.1541428101790;
        Mon, 05 Nov 2018 06:28:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:660c:2c2:: with SMTP id j2ls2184009itd.8.canary-gmail;
 Mon, 05 Nov 2018 06:28:21 -0800 (PST)
X-Google-Smtp-Source: AJdET5cKNd64BXtRgAB30s/QpZgUB3d4r5K/YfZ3KlUQlTPoSZppwZg0uHAm4vAGXd5ez5ljIY+y
X-Received: by 2002:a24:9ec3:: with SMTP id p186-v6mr2019210itd.11.1541428101003;
        Mon, 05 Nov 2018 06:28:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541428100; cv=none;
        d=google.com; s=arc-20160816;
        b=i8FoPEfpKeSSDbfYqrqTQFEp3o7mZr+JFpJqU51HV5WtwoUWQ/Ap5G0J9/RqrTebPG
         FGxm7xvLbCP8k25TxGWKD5W5eik3Zol9GHnGjFK1FW4hIU7OEazl4ZjtpDP8jOhAl+zr
         L3FNQ87VPBr6lYfkqaaANp5xemnjTiL+3xVN05KCk0pYAc4TPkGaw//K0yYGCIwJC8k5
         zI3O98GRTE8Y8qwgky5V4b5kK7/V66g48LPtP6kEdG6OMpU92pYP1SWS+gUl76v1Bgx+
         4zBhWoOzW83YZ8QZ/Cgw1ljrv4RqOwYQPE6zumvWcVTpDzqEQ83xwB7bvlbR8GsGLK04
         LJMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hV5eY9QHyk/rZbCA9/nY3Xjw9/pbf199LWh55T0J9IM=;
        b=dyldo2YXuqFnP0MwvVw3UP8EZsR2aKkec6Cs8AEa7cQdhXqpe3Nw542pfxkFRiIADb
         fNq1/f37FKr2c9wwR/KNt4y9N8lOb5IrIcfIgqVtcDzSWq01ZsCgVcmChjX4ufWDe1e7
         q0PLyUWKXf7MqDoVZFZsrLB/Pfy5qPPWluVJJqbRTNld2tYZgRw+gw6nKX+sYOAozrca
         SA0Lg3Lnwd5gbSEyNHDJPjn2K+PzOigShGzafewfCBpI9kiFC6YsIkfptnHqP4x+KPFr
         jxax5WWvhJKdhZ7DMm51D4ov6dj/9s8W5DzFqBQny4BC8k7NXX88t9fKC9QcKDwy3ZUV
         EbYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s1LaXMNk;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m138-v6si446902itb.2.2018.11.05.06.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:28:20 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s1LaXMNk;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CB24C20819;
	Mon,  5 Nov 2018 14:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541428100;
	bh=uiNk4MeZCyf5/WmmSZx9L4j3u8eDYubbxCbqB1H4n/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1LaXMNkPEIxXcJXiOaFTf8e1/3hQXHLS5SeKAeL6EOo4yaoiz1yOf3JyNxbPU5x/
	 GjeBGVgd7QFT0DIaIBAgoBGY+03SO5sB3T+BIUOcV/6uVew/rrrwVVEPbkuNmfSTx9
	 q7EkVlNeQ50+a6bu34WS7/ma0HY3exSWOFNlCim8=
Date: Mon, 5 Nov 2018 15:28:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 00/14] staging: greybus: various code cleanups
Message-ID: <20181105142818.GB11131@kroah.com>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Nov 05, 2018 at 02:18:12PM +0000, Ioannis Valasakis wrote:
> staging: greybus: Various code cleanups reported by checkpatch.
> 
> Ioannis Valasakis (14):
>   staging: greybus Align parameters to parentheses
>   staging: greybus Add a blank line after declaration
>   staging: greybus Fix SPDX identifier
>   staging: greybus Align arguments with parentheses
>   staging: greybus Shorten comparison to NULL
>   staging: greybus Correct SPDX License Identifier
>   staging: greybus Remove multiple blank lines
>   staging: greybus Insert empty line after struct
>   staging: greybus Remove space before tab
>   staging: greybus: cleanup long line in gb_uart_probe()
>   staging: greybus: remove multiple blank lines
>   staging: greybus: Add extra space around OR operator
>   staging: greybus: remove extra space before tab
>   staging: greybus: correct SPDX license identifiers

You can see the missed ":" very easily here.  It's a good check to
verify that you got the text correct to look at this output.

thanks,

greg k-h

