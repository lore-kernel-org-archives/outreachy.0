X-GM-THRID: 6748460099030745088
X-Received: by 2002:a62:6247:: with SMTP id w68mr312399pfb.11.1571320693164;
        Thu, 17 Oct 2019 06:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:25e2:: with SMTP id k89ls677816pje.3.gmail; Thu, 17
 Oct 2019 06:58:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtk9BZi4l1Zgx4DTyD/RS8j9TojakwVZUlZztmqcGAKMCKPGQvoZH5OylVKUr7mpojAMDp
X-Received: by 2002:a17:90a:2142:: with SMTP id a60mr4639220pje.8.1571320692202;
        Thu, 17 Oct 2019 06:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571320692; cv=none;
        d=google.com; s=arc-20160816;
        b=V9m00aNektXzBOa42PomLXVeGRbDPtAAxBU4sFaSpRsoVG2DbuoXzEAprBtTP5fF1O
         Pr1C2PTBygG6n/WGOweEto0A8dj7tvnOlDlpdImQlMv1iOvpQTqbM8EKPAYKTjiQQgVW
         7BQmmdaPiiXyfyCvgStTLOPWyn4TRHelwOz39gGhnnqRE58ytabsOpJhXUL+U7cbW42j
         pzisvUKmKnC4c2lgdwNac53QqWrSUGbOVpVdX4qqU9bwAH8IIk7SkxBZiWKkSxTjC6W/
         OKp5USx5zuuyPtk7enEmkmWxcRf0ljv+yqE7SsVTnj7XabvqKHLdMKQ8ekSDZ3VXH+Wn
         Es1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rUJudGXLZY8tQKPA0AUUEpf0SulaVQ/6HKkVpq8saZw=;
        b=wZ3nDJPTMo+qoACJkUL0bTTY7MWdmjEqZG72gxLbFwAUIHnkNlcXEcImVzYWdQ5/Cw
         QCiMOFJecvmHuwmN+rgHa5tIhS5EVRJcYBg7UaoHDnDBM37NER+uIzldVVz2YH6oU6ZT
         tQXVb7OLBKXvomKehqfp5D2skzKr4R79dlomNRcwfGq9b6JEzL0Wf28B6SOyn1fEtBIl
         7faeyox8znd7UdFkDcoJ3/KLjzUW697EcS7vld138lhQOJUjrdPGYMMNJ4Ww6ZqnQ8Nk
         xhBFZuVUeNUywOejFNDpHxDI4xup0IuscwDB0v+p/Izv+hW3d8qU7rviCECSuVBdOO1b
         Olcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zGa4XTDY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g12si117950pfi.5.2019.10.17.06.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 06:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zGa4XTDY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5EAC2082C;
	Thu, 17 Oct 2019 13:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571320692;
	bh=xNPOqqCSMEG+e4tT+szD7O5O9kRfmZDv+uFFDfKdQR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zGa4XTDY5XfbICSiWQBcv0OiFMFur3Rq8vnpqjexubWnpaG4vVdxU3l51vOdLtU6M
	 A1//taIA/K3C5R85jrN2c9sfA5x5dLtrZDJ3hw86kEG0Bfj8ikvPPs7E5tpg+Kf4Ah
	 vwdlQOsgC7vRWYQVJPESbZayT/y8hH/4v2RyE3lI=
Date: Thu, 17 Oct 2019 06:58:11 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: fix check warnings of line
 over 80 characters
Message-ID: <20191017135811.GA1075080@kroah.com>
References: <20191017134402.14718-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017134402.14718-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 17, 2019 at 02:44:02PM +0100, Jules Irenge wrote:
> Fix warnings of line over 80 characters.
> Issue detected by checkepatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  .../vc04_services/interface/vchi/vchi_cfg.h   | 168 +++++++++++-------
>  1 file changed, 106 insertions(+), 62 deletions(-)

What changed from v1?  Always put that below the --- line.

v3 please?

thanks,

greg k-h

