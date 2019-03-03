X-GM-THRID: 6663863789016842240
X-Received: by 2002:a37:4989:: with SMTP id w131mr7582940qka.54.1551600559543;
        Sun, 03 Mar 2019 00:09:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2b0a:: with SMTP id 10ls1157492qtu.3.gmail; Sun, 03 Mar
 2019 00:09:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqw7W5YLr9j34ZKVNGmCJHFFdE2JhevAz1dTZifGsT3H5wR2Z+doIDc1/ueI2d+AB/EmGMAY
X-Received: by 2002:ac8:3077:: with SMTP id g52mr7910152qte.4.1551600558718;
        Sun, 03 Mar 2019 00:09:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551600558; cv=none;
        d=google.com; s=arc-20160816;
        b=RRYwBNWON0v2uBeaLX5eCT7a05A2h7veiACtWAyNndkw5yiEspzG6Z6HllJNarWX93
         t+UxaeJF2fIA19s1L6ezAlSw6q9t+5uOaboX8Nr31Hckrd4IJLgt4rGPsC/tqvNXDxYo
         ihUkwXvDVGWIWLI8KT0VquIpx3UgqAa9KZqcd5RJEhTcPICUk2eawP5ytnGxIxdPwvrV
         3s+Lil6Vvg4X8FdyyAm9B0VJ480nuN85FV669YYV2Nu4dnNl2ucuZmcaBdl+g15cs8D1
         nehEOSJYC+FtPIEIg7zx4IUbe7BZUSe3pWRu0fLztGrVwrQRQi7l3jJlU1h9c12zoMTA
         zBUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nwOqCgd9dt2OC/HVJGnmUDOOt1IWq0mlCI8ErU+twpg=;
        b=UoISuitb1dmMp39IolSlMiE67qPL+mld3lOU5nOM9dRvE/MYq0N0E2k/45UO08YtBV
         lUOwN3q/DBxC91VuC8dB2mR1nS28jRkH0I/qhRgrne65ntJ09taTe2CBz6zMcBlz/HFo
         63YhHc69q6qU8DC9dD/cejQ6HMrNjj47zx407nd4qKKyKM8g+zvqwHyaymOILkfQtyUp
         4UH/Iwy4eBrKQS7q9oc0f3wBcTzKRk+8AWGvrH7vsnt+czHT03aSWgx3NJT48Q718qYD
         wBTN/U4VcWAVxYjKGA2bkZfztjj5+rpAzcXdpBuhLsaIObF4UfnhtUTGE/Cfl0rc/DMO
         0klA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lg3GbfVf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t79si162255qke.0.2019.03.03.00.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:09:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lg3GbfVf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2C27A20863;
	Sun,  3 Mar 2019 08:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551600557;
	bh=d78+bzZil1T4aJqbAk9zRA3Bwpc82mKG25Twy2brQ+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lg3GbfVfzoav6nziBgsUnou/iJW/YPtzWSGYX1wFL2TihruWqL0IsHxiYZ9eaeDrQ
	 LDkmi74wzUYoEmBYp+S+Pe4N9Jdhc16QP3i3dML0+KB2MC+1b8rcgDx3JyzuqWkr+2
	 GmOFBpFEo6acaDwnykAfkdd2K6g7exPuF9l2hwVY=
Date: Sun, 3 Mar 2019 09:09:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/8] Fix checkpatch.pl issues
Message-ID: <20190303080915.GA712@kroah.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 02, 2019 at 12:34:42PM -0600, Madhumitha Prabakaran wrote:
> These patches fix warnings of line over 80 characters, comment style
> issues of SPDX License Identifier and remove unnecessary blank line.
> 
> Madhumitha Prabakaran (8):
>   Staging: vt6655: card.h: Fix line over 80 character
>   Staging: vt6655: card.h: Fix line over 80 characters
>   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
>   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: mac.c: Remove unnecessary blank line
>   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier

Again, does not match the subject lines :(

Perhaps if you typed out here _exactly_ what you did to create this
cover letter, and send them off to us, it might help in determining what
you did wrong.

thanks,

greg k-h

