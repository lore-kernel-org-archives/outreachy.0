X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:9616:: with SMTP id v22mr5725667ljh.107.1585573832376;
        Mon, 30 Mar 2020 06:10:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls196568lfm.6.gmail; Mon, 30 Mar
 2020 06:10:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypJMwsF59mBCeg7vyd0VziXVXd22Lts1XSL6s6tODyJ4yHd+M1I00AORc9dOjyK/QXblr7dE
X-Received: by 2002:a05:6512:48e:: with SMTP id v14mr7461578lfq.35.1585573830558;
        Mon, 30 Mar 2020 06:10:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585573830; cv=none;
        d=google.com; s=arc-20160816;
        b=XIeEZtM4vO6eZKuoKvQlLdL+qSVjf0bYcqKMcG1/Ll0C/7OWwLvARD66uasLQCBCxS
         K992Wa/4EDIaV9IzA1zBNgroy/5FYn2OqyFq6icK4DHnm3QFYPRy7WVhPwvdCDUdUmMO
         8EvxxpAyNZ206JojnFuCwtCMlgtD9tO6qQgFXG5hbfAdKNKk60SP1fiVrrCH8AUVYOwK
         W6+1Pe/KHqgUJqXOTyTyQ9U+cfHctNzvATRGLC8xamxHdJX5hv425qarn4kzJXYGkepS
         1IsqjgTeNIeUDiwovRvhmzA4sa4fyrI9cfbrlDnv1CqjkmbJXVU9zCROlR0Lm9mQWMYr
         px5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=N3Estgz3jQVMnO71jtwmpRgj3r4vTghdcmhC9quFe9c=;
        b=Ierf0DtwFSFTQLqrfdXQ7KID3Vd+W4GAtGejF8j2zxTJlvDvEDWAJVlyjBQmUYgPvE
         U6SH6+BlSOgGIW+5cX0AjlQIIhdjTnK2LYez74Zk3PlG4MMBitH9Y+6X9VdsmGXPz4Wx
         MKZ6LvyjVbEbO8qXOHk9Gj3HhKZiowQdM3NykHx+mQaEoHBZAQ1j2nkPMm9zBysjcMda
         Ftqut1308zYtE3ZnG6cFfL6Ly+os4KLM5TetBpVQ2iOA8W3yQS0KS9L6lQPArorAe7Mt
         1iZXe4v/0vlCE7WrFo42FMvMFsyBFkAuckJQIlZ6ortNUhXvZa3dtbEXAx3IspUAESi4
         ZZhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+XBjl6R;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p5si883629ljj.3.2020.03.30.06.10.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:10:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+XBjl6R;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id h15so21521677wrx.9
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 06:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=N3Estgz3jQVMnO71jtwmpRgj3r4vTghdcmhC9quFe9c=;
        b=R+XBjl6RIIM5z5EsBnR9Ufg3lwD+MESat67NPj77STwL8Yz3P7KOluD9WcKKQyk1IC
         ha7edUAddwT9KQJYPeyQJs9wPuHM712F6jUh5s9S4yJGTbMXtsfpdtxRQWFrG6001Hsa
         Wp/CqqnHD6vbSUvzUe0UbWeP7bZzvoLocRTjlSiJ1xu1fUFRk4CGTxdlcfs9jhUjik95
         fLEkvVl1VMCljYEOBDwm+d6pF0Kr5gDJyfNC9b5w3U1GGQvFQ5YhRefMg1n7Zy/1AbK1
         xoVhRxtTPDtKjpFiNg/lGduVLGfuZXyaHLPbGGr8pnGhv6xfdvUSSoWBpNil1h4hDo25
         6X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=N3Estgz3jQVMnO71jtwmpRgj3r4vTghdcmhC9quFe9c=;
        b=sAJKCSS5uk+sZsIRKynCC29uztisdZVvW7kJfmtTGi/6XzvHZVLvng3Fb/FOd1ud76
         KtYZC1YuEwglsSZXKJwPD/2QqUhYYNnTZi98TAV3ftORgJskog2aIsfJO81ezu9qQ+bY
         OV9DC6v9AgjGz3PaHUJBwUPosRNJi36liK5ucjeZuX3XTlZhQTq3B0gtyvYlj5IVa1th
         zKY+QkrFFgAN3eCx5FQojQqMsRghpsknkbLzMX/6zBijgkICWVx7I1paB+XYbT7JHq9O
         1fSWsnt+TRPvZEsIX1psiwrjyRSZUppKW0J3eKD9M+uqj4fnXk2u1pVxIuCfpbdSpkXi
         RgBA==
X-Gm-Message-State: ANhLgQ3JbEJcbLiJ5TLOibKgfyRzR6BCrM+g2i46Zp/UINgcXsLgsBm6
	WCauEUaPOigFegrKdK5W6a35Kmk6PZI=
X-Received: by 2002:adf:e848:: with SMTP id d8mr14497797wrn.209.1585573830024;
        Mon, 30 Mar 2020 06:10:30 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id h5sm21790623wro.83.2020.03.30.06.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 06:10:29 -0700 (PDT)
Message-ID: <a8827e9f7e29b2db976a3f77b0f9f2e5d0da55f9.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] Staging: kpc2000: kpc_dma:
 Use sizeof(*var) in kzalloc().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 09:10:27 -0400
In-Reply-To: <20200330145605.285d8877@elisabeth>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	 <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
	 <20200330030433.4b924c5e@elisabeth>
	 <1e4819bb3fc9377f19755625518b0cafabaed509.camel@gmail.com>
	 <20200330145605.285d8877@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 14:56 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 06:45:00 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> > > On Wed, 25 Mar 2020 10:26:37 -0400
> > > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> > >   
> > > > kzalloc(sizeof(*var), ...) was the format been used
> > > > across the driver, which is the preferred format,
> > > > but missed two instances, correct them to match the
> > > > coding standards.
> > > > 
> > > > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > > > over kzalloc(sizeof(struct var)...)
> > > > 
> > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > - Update the log message to be more descriptive.  
> > > 
> > > It would be nicer to refer here to the person who suggested the change,
> > > if it's not you directly noticing the problem (you can just mention
> > > them by name, name and surname, or explicitly say "suggested by ...",
> > > "requested by ...", etc). There are many recent examples on this list.
> > >   
> > Ohh, Sorry for that, i thought this tag is more of a code related
> > change. since being new to the process, most of the time log messages
> > and subject lines will be commented on to follow the conventions. which
> > i thought is a different case than changes in the patch itself.
> 
> Wait, I wasn't talking about tags here:
> 
> - use a Suggested-by: tag if the patch itself was suggested by somebody
>   (which is not the case for this patch)
> 
> - v2 was prompted by comments you received for v1 by Julia, so it would
>   be appropriate to state, in the history of log changes:
> 	- Update the log message to be more descriptive (suggested by
> 	  Julia Lawall)
> 

My bad, yes.

Now is there a way to add this and your Reviewed-by tag over the series
since the changes have already been made?

Thank You.

Sam


