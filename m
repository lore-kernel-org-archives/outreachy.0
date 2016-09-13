X-GM-THRID: 6329847978033938432
X-Received: by 10.66.172.14 with SMTP id ay14mr2582625pac.0.1473804229835;
        Tue, 13 Sep 2016 15:03:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.86 with SMTP id u83ls846565itc.20.gmail; Tue, 13 Sep
 2016 15:03:49 -0700 (PDT)
X-Received: by 10.36.121.139 with SMTP id z133mr2570475itc.4.1473804229080;
        Tue, 13 Sep 2016 15:03:49 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si171815pfx.2.2016.09.13.15.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 15:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so115477pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 15:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1Pzt9fq62QJtlGkguCEhwaie8xe9oHfah5u+j737UPQ=;
        b=iDjx4jFOCYd+2IlhBHhgioTMQ4TIq6mMkYEOAx4mTovF4HofO2LHFwkPaqGLxx5yba
         nv6/yjsNxiLUD3e2ro0BjhbhOmJ9bbfwUkFkj/zuRBmSU+jaD1OXHuWodZUFSOvgO9h3
         GdspyVUFeLsXxQG83ISRWNjBSQ/sEg0x18qJfeaXL8TPhkWo2G9ef0yovwUowUZ/+Dk3
         otBRILajw+WxAwkDeC/TSlxBut1NmWs4NuZb74fp2XJC7XM+dqwni6ox6YjWL8W/6CRy
         qyS/D3/2gpaOv2Kt4NoBVMov/Ule3VzcPMHY1DqngB4vh0JTUuGYujeNq+yWg6z/ukMt
         kg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1Pzt9fq62QJtlGkguCEhwaie8xe9oHfah5u+j737UPQ=;
        b=AVfRZ4ciRexBd3BrtJk+A+AFDDPNI9e2iYSwlJ8aLWGA0AAvSOpgsyJVRati2MSkYM
         VyKaz73f2L9BdsvG7teQoQbCWOMFoIeZB2lnfz3fPdlRkuVTSNK7tXH8uVEUkW/urroP
         56wnybI4RUFjmaqXCOTqq7mvo9IhOhOaEf7b0sT/SmiyBg5ZNI0ovuS7RpVa05+qIZZQ
         xqsZPMJax5kSsgG3pKXW7jmHMpCzeJEgUqRsSA3Una6JQgMu7SJ3SYqll/E7FRJGb38H
         PohaZjAe0Ts0w2KHpdyNSGh18XNDB5YRS25nrxAdh6RRWLRgxLH1GHxGC7kRujSl8YFl
         7H/A==
X-Gm-Message-State: AE9vXwN36uhXWiU6gZrAiM7MYqA0Rr/iPWQB5ZLJIw309JdCh42ZXXfH0Ym+TAxZ8rGAhw==
X-Received: by 10.66.190.200 with SMTP id gs8mr5348049pac.42.1473804228796;
        Tue, 13 Sep 2016 15:03:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id q14sm14069565pfg.63.2016.09.13.15.03.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 15:03:48 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:03:47 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Removing multiple
 blank lines
Message-ID: <20160913220346.GA4438@d830.WORKGROUP>
References: <20160913160213.12708-1-gs051095@gmail.com>
 <20160913184643.GA3351@d830.WORKGROUP>
 <CAOCi2DGhDCt_JZ9=TBX-hRvpz2-EXaVffW-qE+6MT8Un4QmwLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DGhDCt_JZ9=TBX-hRvpz2-EXaVffW-qE+6MT8Un4QmwLw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 02:20:01AM +0530, Gargi Sharma wrote:
> Hi Alison!
> On Wed, Sep 14, 2016 at 12:16 AM, Alison Schofield <amsfield22@gmail.com>
> wrote:
> >
> > On Tue, Sep 13, 2016 at 09:32:13PM +0530, Gargi Sharma wrote:
> > > Fixes the checkpatch issue Please don't use multiple blank lines.
> >
> > Hi Gargi,
> > Just a couple of minor format comments, but you may as well v2 this
> > to get it looking it's best in the git history.
> 
> Should the v2 have a message stating that I fixed the commit message or the
> original commit message?
> 
> gargi

There is a section in the first patch tutorial for this.
See "Versioning one patch revision"

alisons

> >
> > Typically the commit message is written in the imperative format.
> > That would be 'Remove' instead of 'Removing'.  It's really not
> > necessary to become a grammar expert ;)  just do a git pretty and
> > verify that your commit message is in the same style as the others
> > on the file you are changing:
> >
> > git log --pretty=oneline --abbrev-commit  <filename>
> >
> > Within the changelog you can just cut/paste the checkpatch message,
> > as in: CHECK: Please don't use multiple blank lines.  (Also tells
> > CHECK or WARNING)
> >
> > > Fixes the checkpatch issue:
> >   CHECK: Please don't use multiple blank lines
> >
> > Really minor stuff, but it keeps the uniformity which is nice.
> >
> > alisons
> >
> > alisons
> >
> >
> >
> >
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > >  drivers/staging/octeon/ethernet.c | 2 --
> > >  1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/octeon/ethernet.c
> b/drivers/staging/octeon/ethernet.c
> > > index 0bd5c18..ec8e424 100644
> > > --- a/drivers/staging/octeon/ethernet.c
> > > +++ b/drivers/staging/octeon/ethernet.c
> > > @@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device
> *pdev)
> > >               return -EINVAL;
> > >       }
> > >
> > > -
> > >       cvm_oct_configure_common_hw();
> > >
> > >       cvmx_helper_initialize_packet_io_global();
> > > @@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device
> *pdev)
> > >               }
> > >       }
> > >
> > > -
> > >       cvmx_pko_shutdown();
> > >
> > >       cvmx_ipd_free_ptr();
> > > --
> > > 2.9.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160913160213.12708-1-gs051095%40gmail.com
> .
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160913184643.GA3351%40d830.WORKGROUP
> .
> > For more options, visit https://groups.google.com/d/optout.

