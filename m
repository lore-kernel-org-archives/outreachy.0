X-GM-THRID: 6335813974195437568
X-Received: by 10.157.51.60 with SMTP id f57mr748338otc.94.1475174332446;
        Thu, 29 Sep 2016 11:38:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.106.72 with SMTP id l69ls57910itc.16.gmail; Thu, 29 Sep
 2016 11:38:51 -0700 (PDT)
X-Received: by 10.107.164.205 with SMTP id d74mr1133007ioj.8.1475174331515;
        Thu, 29 Sep 2016 11:38:51 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si3628370pab.2.2016.09.29.11.38.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 11:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id r9so3090029paz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 11:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zoalCJ+GrV+eZveBITIoY8uIcOTh291eCacKwBR5Y7Q=;
        b=sGb+nMLdMIfP+OZsg1pfsnWrOQeW/IxH0VUEZpxYh1HQkXOITERRXSRa+ikv8hwKFg
         T30+OkAJX3qNa+8DcoidBeDNwLoMAs9KR683OyKiduYZ7rrBV3SMNw1sSCcX00fxofOJ
         0AqHVlLoZlQk3Cs8fy0P1OclymTg0Q+QP5SwiE6azU914XA5brNXPbwlrcIVdcHiZUSQ
         ZuKbcdWT5GufNTTRC+vN8alAsnfN6fk0ikExkw93xUxbvxUgz0lnYQqcqVNEKEy14LQ4
         lTALKU2/q9ctJrki4e3NiLrhlYSMQsCgA34JLk1GCpoVkfM4OWNFyzvdNjulPLJ6+uAx
         mZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zoalCJ+GrV+eZveBITIoY8uIcOTh291eCacKwBR5Y7Q=;
        b=SO/l3L/EVd5nc8eJxGxAPUgAG4Tn9PAeGwekR3fJ6k8KQY5+9JoZUGCYvISheBjZln
         Nttkmd4thM2XP18ZnPdI/4LZKwtuolU7DguTLDVaMT7BqUzdurLREMAS935tyP21DnnD
         zSikOZOMmBasytzeHGB8tabKS0i6hMx8/fZ01BXo35HWLypplP8UyyxGTi52Idm0hCik
         bdbYfJJ59h9v6dxyIaxXMY3NuLgtBp4vFVDg6SkC/aC8+5vpwZFPFtuOd7LG3jpyl0kC
         eCjYr45fxtX77VNX1twkHvVqJD2rrVS7HFdpbOoLxN/vj5Bu9gvvGXSBEhwExBxzECe6
         KwGw==
X-Gm-Message-State: AA6/9RmOrKC2F+q3hWfvs3SU/G1TAHrKxfXkT+Rdzi6nvaCuAtV2nbi+bwP7ltrfQ6E5VQ==
X-Received: by 10.66.234.167 with SMTP id uf7mr4790950pac.94.1475174331065;
        Thu, 29 Sep 2016 11:38:51 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id r66sm21977882pfb.54.2016.09.29.11.38.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 11:38:50 -0700 (PDT)
Date: Thu, 29 Sep 2016 11:38:48 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] mail delivery subsystem failure
Message-ID: <20160929183847.GD3294@localhost>
References: <20160929175401.GB3294@localhost>
 <alpine.DEB.2.10.1609292023060.3160@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609292023060.3160@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 29, 2016 at 08:25:12PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:
> 
> > I'm trying to group-reply to a message Julia sent about my patch. It
> > fails to send and I get this error for each recipient from Mail Delivery
> > Subsystem: "Delivery to the following recipient failed permanently:"
> >
> > It's making it impossible to group-reply from mutt because google thinks
> > it's spam... I tried doing it a second time but the same thing happened.
> > I believe I've group replied before and it worked fine.
> >
> > Technical details of permanent failure:
> > Message rejected. See https://support.google.com/mail/answer/69585 for
> > more information.
> 
> I'm the moderator of the group, so normally I should get informed about
> any messages that are considered to be spam.  I haven't gotten anything
> recently, and I didn't see anything in the web interface.
> 
> On the other hand, I see that you did spell my name incorrectly:
> 
> juia.lawall@lip6.fr,
> 
The ellipsis is how google groups abbreviates all email addresses in the
mailing list; I wrote out your full email address when I sent it. 
> Maybe lip6.fr is reacting in some way that google groups doesn't like?
> 
Possibly: here's what i'm getting:
Delivery to the following recipient failed permanently:

     juia.lawall@lip6.fr

     Technical details of permanent failure:
     Google tried to deliver your message, but it was rejected by the
     server for the recipient domain lip6.fr by isis.lip6.fr.
     [2001:660:3302:283c::2].

     The error that the other server returned was:
     550 5.1.1 <juia.lawall@lip6.fr>... User unknown

> In any case, you can try just dropping me from the CC list.  I will get
> the message via the group anyway.
> 
Good idea i will try that.
Liz
> julia
> 
> 
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929175401.GB3294%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

