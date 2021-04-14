X-GM-THRID: 6948024355480666112
X-Received: by 2002:a05:622a:10f:: with SMTP id u15mr18049385qtw.285.1618416708774;
        Wed, 14 Apr 2021 09:11:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1325:: with SMTP id p5ls1522742qkj.0.gmail; Wed, 14
 Apr 2021 09:11:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwNWTd50MXAnLBsdw1gwz0OXHVHyIhDgYTnHsJSDG5LGk0EA2umW4w0XpjX+KHfsdkXtdDP
X-Received: by 2002:a37:e57:: with SMTP id 84mr30486016qko.8.1618416708039;
        Wed, 14 Apr 2021 09:11:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618416708; cv=none;
        d=google.com; s=arc-20160816;
        b=R9jN3w1Wu4k0JZn6aRtiuaQNwznbtCfipzneiRt6bGL7aoH+CD6mN7Gx9HzGFJjugU
         tBL5Hv3T2K/wiib4BOsyWvy+jEcJXr1Wh++svgymQQXv8af0l4quGE2CuuOPbxg2riKY
         WPgK76i9nqsYZGCdUfUYo2zBLdz8jicDu9qF9v94M+V3I2w4HEy376/zdCZXXSQ7LKM/
         XURE2Jvf4LVEl2ecs80TcQ8gVksNckNvWvTEh1UrqXET/jbT/SCG6lpIARbc30STrfpO
         +D/XLOs8vJaDVVsng0aJwvQpjLWC88Otjgm05iEoUkD3lMZ+akdGN9LrjcPzSObY3YZX
         YzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Hv6Ujjlvsv+rO9qorUcLduDWBmnReoceFj3xWwLiDIQ=;
        b=xf1uozjUVAhckzL4KomT5lakdeiCmk+l/bVON5dXWr4vihcvh66cpxN8wl/k6hXJAk
         pXfd2vmwNj41uuPDrXhC06STQrzX4cjRNOVKckT/n5557uPBWVYsX3fXdkUdv5NZHvj5
         ELZ4SlQYxPRotntWhAwVYNaauC+H/PY7FjALA/fCvxCXYdhoDNi2FwIGA60ADMo6Snpt
         12JJ+wQXWZ0B+NVjbpc+FdhhJ+kM3xZiEvyyp+zU/YQ/ioUW1ExP9ZK8IxEzFVKhuvtj
         dO/KCFwoVfTIzY5P9og4ff3SMzAe9n8XYdlM5ExIkO5c+hiFdFcnuKnMFH7Gqrcws1wc
         Av+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com. [216.40.44.31])
        by gmr-mx.google.com with ESMTPS id c22si4174qtg.5.2021.04.14.09.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 09:11:47 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.31;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf16.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 27C7C182CCCA1;
	Wed, 14 Apr 2021 16:11:47 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf16.hostedemail.com (Postfix) with ESMTPA id 4525E255108;
	Wed, 14 Apr 2021 16:11:45 +0000 (UTC)
Message-ID: <c502a48ded02fb681a5978b5af888c74be9625ec.camel@perches.com>
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
From: Joe Perches <joe@perches.com>
To: Alex Elder <elder@ieee.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, Dwaipayan Ray <dwaipayanray1@gmail.com>
Date: Wed, 14 Apr 2021 09:11:40 -0700
In-Reply-To: <78c88472-9ed9-bade-407c-23bd557f19bb@ieee.org>
References: <20210406124259.GA96537@zhans> <YGxhrLZPIPjILWUH@kroah.com>
	 <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
	 <1607b040-6bc4-9a58-ae81-4ea0adf5885d@ieee.org>
	 <b22ffa716ee871f7e09ad7321213a897156edab0.camel@perches.com>
	 <78c88472-9ed9-bade-407c-23bd557f19bb@ieee.org>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4525E255108
X-Spam-Status: No, score=0.10
X-Stat-Signature: 81yw9jqkbykio1i5aqrot1ef8c8sizcx
X-Rspamd-Server: rspamout04
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+sMqN7x+9JMu+tt9FlJx5gWwVR7LAVi4o=
X-HE-Tag: 1618416705-920260

On Wed, 2021-04-14 at 09:35 -0500, Alex Elder wrote:
> On 4/14/21 9:29 AM, Joe Perches wrote:
> > On Wed, 2021-04-14 at 08:17 -0500, Alex Elder wrote:
> > > Perhaps (like the -W options for GCC) there
> > > could be a way to specify in a Makefile which checkpatch
> > > messages are reported/not reported?  I don't claim that's
> > > a good suggestion, but if I could optionally indicate
> > > somewhere that "two consecutive blank lines is OK for
> > > Greybus" (one example that comes to mind) I might do so.
> > 
> > checkpatch already has --ignore=<list> and --types=<list>
> > for the various classes of messages it emits.
> > 
> > see: $ ./scripts/checkpatch.pl --list-types --verbose
> > 
> > Dwaipayan Ray (cc'd) is supposedly working on expanding
> > the verbose descriptions of each type.
> > 
> 
> That's awesome, I wasn't aware of that.
> 
> Any suggestions on a standardized way to say "in this
> subtree, please provide these arguments to checkpatch.pl"?
> 
> I can probably stick it in a README file or something,
> but is there an existing best practice?

There is no standardized mechanism for this checkpatch use.

Putting something in a staging README is in general a good way for
it to _not_ be read by people doing 'my first kernel patch'.

I still think emitting a message for overly long identifiers could
be a decent checkpatch test.

https://lore.kernel.org/lkml/1518801207.13169.15.camel@perches.com/


