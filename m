X-GM-THRID: 6802515514721566720
X-Received: by 2002:a62:ab0d:: with SMTP id p13mr11849129pff.31.1584959299076;
        Mon, 23 Mar 2020 03:28:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls8132584plq.7.gmail; Mon, 23
 Mar 2020 03:28:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvup1817VoUHeT8VdonDvizRzmM/Yb0ZjDhC8WdIaEfDGa/n7vWHIUjXjDBbJgzR0+InvRx
X-Received: by 2002:a17:902:7609:: with SMTP id k9mr698821pll.9.1584959297679;
        Mon, 23 Mar 2020 03:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584959297; cv=none;
        d=google.com; s=arc-20160816;
        b=SpZ0J+Qxl3Ogv/nU8nlvovG0i6EL+5gck3bqwE6FLjNNO0eKkonr72gR+gkK3qkhNf
         oqidaSx1BJuv1zH1A0R9leX5zSRWjCdBggy7b45TRB8pn6gLQKBg06a9Ao/RNoV2NRSh
         m41AwE1SI38bw7h2OOlRHUyZ1cX2ym20y96hSp35f750sToj8FF+mgJ3gcdWnUSeE+DN
         XIBvu64ivA6bykf7Ul8V/OClBSjySgKOFCQ5tUCZmtEjrKHGam1DreWEOOIsyj8toryw
         Ro9KZwi8QdJHObZ5z7zhU0xEEmfj8o7vAIGSbdpMc+kWLYdWJxDOz4dv+REVWFmZ9clA
         YNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yok6bWEsC/qKkJmQ7Ut4TULWII85cntvCayYrj2YZ84=;
        b=ucgZxNkVovQo8Dt30emz4KcZBqW7rgJTd2fsAfrBGhchUZY0meTX4Z48TI+uCwWfP+
         35xYcUMSo1CRgo2m7vAaw5UmfLDyb9d0NLnT/s7bxMqtQvcLv14KuV/D+ABg3t1rUtqI
         2pQ4RrDsq5ngQ3MqMnSRIgu3Bx50HJho1YKNkTqWjvMO2ql5psh5usk/bU7z2jNF9ER7
         WwsoT1F+KsrujsODd9zC6G/L+glGFyNH1GOe6YQsDbOuxLViwANiFnYem3yJYlNTl4dK
         4HZmpJIDohrVDcSSJTWiHrDhI9bRcWfNg8aoaB1wfmUZIKb2cr92q0fXSBxs6Cw5CrCj
         j+gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r8+eIzVb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f8si407790pjw.3.2020.03.23.03.28.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r8+eIzVb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEEF32076A;
	Mon, 23 Mar 2020 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584959297;
	bh=A1kiXMMxHvb63HVSt+QHaNhba6s7MsIf6cHJasgtMdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r8+eIzVbijS/X006j5N42uWA4hvVsZ+UksSF9QSO9J9whZLFlkYP5e3ncUeRtt1Z1
	 t/lNp7FZiYGbNT1Lwfw7Sw6hMGEXyaCYv+kRtW3y6rGVmeAXG4uVMeZkxSc6YVvsra
	 bRlpuWQmoYkHe9XP8ZjN7mDBohcoskoCzjEFJKMo=
Date: Mon, 23 Mar 2020 11:28:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: John Wyatt <jbwyatt4@gmail.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200323102815.GA433428@kroah.com>
References: <20200320141418.GA707555@kroah.com>
 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
 <20200321065134.GA849159@kroah.com>
 <20200321070501.GA850438@kroah.com>
 <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com>
 <20200321074106.GA856920@kroah.com>
 <dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel@gmail.com>

On Mon, Mar 23, 2020 at 05:56:28AM -0400, Sam Muhammed wrote:
> On Sat, 2020-03-21 at 08:41 +0100, Greg KH wrote:
> > On Sat, Mar 21, 2020 at 12:26:34AM -0700, John Wyatt wrote:
> > > 
> > > > > > I just sent my patch in ~10 hours ago.
> > > > > > 
> > > > > > Do I need to rebase/resend it?
> > > > > > 
> > > > > > If I do, should I make it a v2?
> > > > > > 
> > > > > > Apologies if you already answered this earlier in the mailing
> > > > > > list.
> > > > > 
> > > > > Julia provided comments on what you need to do to fix up your
> > > > > patch,
> > > > > please follow them and resend a v2.
> > > > 
> > > > And you did just that, nevermind :)
> > > 
> > > :)
> > > 
> > > For future reference, if I send in a patch around 10 hours before you
> > > ask to rebase-should I rebase?
> > 
> > Once I send out this "I have caught up with all patches" email, consider
> > my queue empty, so you need to fix up anything I have not applied by
> > then.
> > 
> 
> Newbie question, Ive sent two patches around ~12hrs ago
> both are reviewed and acked, so i guess they are accepted?
> when should i be concerned if they're lost ?

As Julia said, they will end up in my tree, if not, then worry.  You
will get an email from my scripts if a patch is accepted.

thanks,

greg k-h

