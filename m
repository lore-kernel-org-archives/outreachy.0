X-GM-THRID: 6999830140356132864
X-Received: by 2002:a2e:bc1d:: with SMTP id b29mr27892432ljf.2.1630440815987;
        Tue, 31 Aug 2021 13:13:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:ea5:: with SMTP id bi37ls847882lfb.3.gmail; Tue, 31
 Aug 2021 13:13:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3rfYQRirR4lvFEYyLQrmKTaOtF3vZzUtY7iPSlIDCk+j1KMJQUWodXJMRcxaIYd9wZ7F+
X-Received: by 2002:ac2:4359:: with SMTP id o25mr3893594lfl.106.1630440814122;
        Tue, 31 Aug 2021 13:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630440814; cv=none;
        d=google.com; s=arc-20160816;
        b=ZoVSN9fVOqpXv5f0oJRyH+Q/9BzcLU1oTa59zkmAaRftJhJW04SbyFYPgila0vh4ue
         bq/b9LhcHp6+A7llPzGgLNJRbNDKxvuGSsBhqo+T9xGfKHLHZzQZH+R5XrNJUIvkispk
         4jK2hSNwTrzpZFqT2z+7QHY2wub3Ttk5DLU6U0R8HCAiXBYHJ1XKVbvtvqZxp8RA2ZRU
         Tc7JudaRvv8lJQAxT73TwMEy/CB4duCT/4yGSNES2B0+WCTZ0e1qex+M+tFEke/vTwf2
         sYIEJ9jCLCrmf+ZV4QRlXvp7DIHY4on6RVNlpsf6nA9+nNS2hEApE88sNLOzXfz7rnKH
         1hLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pxk8GG60X+2yyobrSu3E/AhsnJLMw7NHv2ZY1OGYPLA=;
        b=ExQT5xnaz+DiMnM8Ld/s8QYXlYg8f33q85SWf2VzQm0vMwtCbTxE0u7SK1N7O5pZ+o
         a6rZNdnR8Rp+grThmrWub0xwr8TelViF2d/e5CUaBlB6WgDJf4lcc3EzOd7KU9LWrOfP
         WmoX5EWJvMURv1OM9Gt5bNiHfezqdz8NQtcQ+54kQSYisfhTuJkhCfl5O7CSadstrSat
         a1BVnixzH8T2uNJT6oRW7BIhGI8cErnt+MPzXRZj0te6jtDe03w4QOLmYeFmggUMFVE8
         vtdnJ2oZq9SiTzyGLQi/q0GoWq3qYG/iYWBclswUsMmpjnkvhWru2YtMJImcbwb9EAIl
         fzng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="FBEs/xlJ";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j5si582412ljq.0.2021.08.31.13.13.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 13:13:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="FBEs/xlJ";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Pxk8GG60X+2yyobrSu3E/AhsnJLMw7NHv2ZY1OGYPLA=; b=FBEs/xlJysw8HQAyQjF7MUWNMS
	De2n17pxbQ2xl+NP//J2C8FdgxiOn5GaG568uQ4xBswpLfcfSotviKb/4v24SeBynq4+kZXekuzgc
	/euaXeiom93NNxQk+a/pGbWeZgCbc/33axph0y0UG+SSeD572JZ0l4CkK9HtjJSiczv+/cQapT7GL
	MuJVdbS1L1xPGUwr4ezVDYbzSjwbxnTtDqz7GEQcum7reqcsnLL324QBS1yyPHcOMqsswP+vPFZ0+
	ae/4Qhu2DN0lImdyqbGJtGEEWmsoVPfF2PZDCZI5o+1wqWlLjpf1WEwz5tyY9F+rDnxd7MfyVyorg
	xw+sCYRA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLA7s-001Wyc-Sl; Tue, 31 Aug 2021 20:13:08 +0000
Date: Tue, 31 Aug 2021 21:12:56 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Tawah Peggy <tawahpeggy98@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] [Outreachy Kernel] Staging: wlan-ng:
 cfg80211: Fix Lines should not end with a '('
Message-ID: <YS6NSLhZKx0mlcYC@casper.infradead.org>
References: <20210824031551.GA80985@peggy-InsydeH2O-EFI-BIOS>
 <YSTAnuoGF4zuAFrg@casper.infradead.org>
 <CADT-=4mWmUmBQtwwdRXUCPZfePbX6gQB_+ZrVwuE-GC=TYE2rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADT-=4mWmUmBQtwwdRXUCPZfePbX6gQB_+ZrVwuE-GC=TYE2rw@mail.gmail.com>

On Mon, Aug 30, 2021 at 01:41:58PM +0100, Tawah Peggy wrote:
> Thanks for your feedback Mattew,
> please what approach do you suggest I use?

[please don't remove mailing lists; other people may benefit from the
answers to your questions]

There are a number of different approaches you can take to fixing this
kind of warning.

1. Reduce indentation.  This call seems to be indented 3-4 levels,
so maybe it would be good to pull part of this function out into
a helper function.

2. Use a local variable.
			type center_freq = request->channels[i]->center_freq;
			ieee80211_frequency_to_channel(center_freq);

3. Reduce the length of the function name.  ieee80211_frequency_to_channel
is quite a long identifier.  Maybe it would be worth renaming.

4. Introduce a helper function, eg

static inline foo something_to_channel(struct bar *channel)
{
	return ieee80211_frequency_to_channel(channel->center_freq);
}

...

			something_to_channel(request->channels[i]);

There's a judgement call to be made, and without looking at the function
in detail, I don't know which of these methods might be best.

> tawah peggy
> 
> On Tue, Aug 24, 2021 at 10:50 AM Matthew Wilcox <willy@infradead.org> wrote:
> 
> > On Tue, Aug 24, 2021 at 04:15:51AM +0100, Tawah Peggy wrote:
> > > -                     ieee80211_frequency_to_channel(
> > > -                             request->channels[i]->center_freq);
> > > +                     ieee80211_frequency_to_channel
> > > +                             (request->channels[i]->center_freq);
> >
> > This is the wrong way to fix this warning.  Function names should not be
> > divorced from their arguments.
> >

