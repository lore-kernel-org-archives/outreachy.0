X-GM-THRID: 6468535104462389248
X-Received: by 10.129.174.39 with SMTP id m39mr6686977ywh.218.1506075562590;
        Fri, 22 Sep 2017 03:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.198.129 with SMTP id i123ls27889ywd.42.gmail; Fri, 22 Sep
 2017 03:19:21 -0700 (PDT)
X-Received: by 10.129.105.139 with SMTP id e133mr6623199ywc.4.1506075561741;
        Fri, 22 Sep 2017 03:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506075561; cv=none;
        d=google.com; s=arc-20160816;
        b=KTMRq2Q5wOO5/iiSeunF4Aj8VK/SzD0VFGVnaSLKdSFZU/+hARGS8Jtr3eI9eu7Bkm
         t1I4BhbmURt9e9CHYuX04TZYlvh/aYhS+ysk7a6se0/RfOpokrtzfibr1VmlUVaceB53
         hlV1dzM8HKktVwzl0pl3J4w9ifbrdOc3BXsj58jUzBw35tTn404WTR0V8MEKOYXBbc3K
         5rLezqYYu/u1PDmvNM+tvLeYjJpaqnB0SBhHjUn7q2gt0F+SHmILTtOTLIxQ4kSBZlKn
         CsyHHj5rTGjNWXlgtBJmvUV0uDYYQM8jWCOeOmISEpJOpHKG5Wzn6xsvpiaBYkvYzrb2
         t7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kMeQ5uR4BxJH5HT8Hd8S22rVuGp9OQBC6YsStFkW4eM=;
        b=bsDDk4GGPkXL6EuJPZxsbPlcE3J7ddfCWItqlse6ynINYsWD2qpocz0hY2zlZhc5wg
         swIWUS2Sn3zmSQg5RLcALKYiyNkyxGD5sa9rPz678twSk2QDFo6LDLtFZJnGOvk9v/EX
         bY8DpKSDZdMSnWGDs9DRRB2AWXhqwvVGcRHEHOC7NFzjNNh41n0c4BtivYFp+ia/n79H
         m9bXRtjZFr0LMxX5s+99aHp/MskmVfgjT1xvl5Ks0czqHzNFc+TfDCFU0/piv0ekd5IS
         D4HQofkcM23DFtagiID0vLbZ31v4E0j1yVsDknXvy/f/l1r1m4Zj1ndgInyDbQL2fAYJ
         BshQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uyoxnh/8;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c200si337029pfb.14.2017.09.22.03.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uyoxnh/8;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so405187pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 03:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kMeQ5uR4BxJH5HT8Hd8S22rVuGp9OQBC6YsStFkW4eM=;
        b=Uyoxnh/8/KcGwjAxaPAd38ExlWurdzsKEAOvi7qRYpRc7Fln9RFV6mITMKFdb+FY/t
         8DQyxHY44g0rLneYzu88S5HBN9ab/JnSEQwcYgHToDIiwhdLKGTRDygY282dNhqpUxAG
         3uD7KffhCb2ZzMPAssfC5Fusqg+3EF1uVYAIR5P7SfELoEWJsnpfD3gQST8MNC02KVbD
         wUNuAuz7Mg36v7boSwfEn9MMsDv8f8oxJ5vxyry1vmZf7hi7mEGCkxBhVUVz/ZVLzuHd
         d/L3wP0se8jM/n4IwC9qJfAZS/U7qqSFBbqvuSGhXuoGrBx00hsOFdHuibTHJp60Xy8R
         ug7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kMeQ5uR4BxJH5HT8Hd8S22rVuGp9OQBC6YsStFkW4eM=;
        b=VOv1GAPhPW11+vRgXvqts8KjxmmzMqGGapbJuMttURndn+nUAFssnSXYhPibW3tQbW
         BALee2TzX6Bfuhh4D06URfB9mua59G5PGtvYZdhiv/GmM8GwvwQ7JcsQHA/LPhMeFRf7
         RMjy/8VnrofSWhOgnok7zpi6OJaKaymJ+lFhpwzpMmAriSnNkNr42l0Z33gAN887WNVz
         +pOLL+qRLi56na2YwQXVV93L9E6LmZYEkQzCDZIRLvJSI3Q7lBRa7Q/xsz4CRck9T8V5
         6lfktx9S5MEHPW5gEsWatD3ZhElzZlZ3ugKAcUCf5aV0TCfrixONhTv5NbTW/sbZRrUe
         45Qg==
X-Gm-Message-State: AHPjjUjmDN88d8RZ0L+Jm/W4FUEjsMcLzGz0ZCKZoIhVhQycCNbGbAE6
	It1wgugE9ysqD5ry2Y7MuNgs4Q==
X-Google-Smtp-Source: AOwi7QDmO0DseJTTO6RCMEwUOHqf7uH6dlPBNIAsGDXanqNqatgF4Jmzk4GvO/W8qAssFNHETY+NkA==
X-Received: by 10.84.141.168 with SMTP id 37mr8884201plv.140.1506075561330;
        Fri, 22 Sep 2017 03:19:21 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id u12sm7342224pfa.153.2017.09.22.03.19.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:19:20 -0700 (PDT)
Date: Fri, 22 Sep 2017 15:49:13 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: remove implicit
 bool->int conversions
Message-ID: <20170922101913.GA724@aishwarya>
References: <20170922093939.GA29152@aishwarya>
 <alpine.DEB.2.20.1709221151290.3170@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709221151290.3170@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 22, 2017 at 11:52:36AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 22 Sep 2017, Aishwarya Pant wrote:
> 
> > Implicit type conversions are bad; they hinder readability of code and have
> > potential to cause bugs. Here the variable wait_ack is always supplied a bool
> > value while in function declarations it is defined as an int type. Fix it by
> > defining wait_ack a bool type in all usages.
> 
> These are two patches on the same file.  They need to be in a series, so
> Greg doesn't have to figure out whether they depend on each other.
> 
> Also, since you are changing the function headers, it would be very nice
> if you could also change them to respect the 80 character limit.

Okay I'll create a patch series on rtl8188eu cleanups. Please drop this patch.

> 
> julia
> 
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > index 2db2ca6..99f3d5c 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > @@ -1196,7 +1196,7 @@ static void issue_assocreq(struct adapter *padapter)
> >  }
> >
> >  /* when wait_ack is true, this function should be called at process context */
> > -static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
> > +static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
> >  {
> >  	int ret = _FAIL;
> >  	struct xmit_frame			*pmgntframe;
> > @@ -1316,7 +1316,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
> >  }
> >
> >  /* when wait_ack is true, this function should be called at process context */
> > -static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
> > +static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
> >  {
> >  	int ret = _FAIL;
> >  	struct xmit_frame			*pmgntframe;
> > @@ -1442,7 +1442,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
> >  	return ret;
> >  }
> >
> > -static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
> > +static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
> >  {
> >  	struct xmit_frame			*pmgntframe;
> >  	struct pkt_attrib			*pattrib;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922093939.GA29152%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

