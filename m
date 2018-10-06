X-GM-THRID: 6609200682225369088
X-Received: by 2002:a62:3a5b:: with SMTP id h88-v6mr8290642pfa.42.1538849624619;
        Sat, 06 Oct 2018 11:13:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:740b:: with SMTP id g11-v6ls4735461pll.0.gmail; Sat,
 06 Oct 2018 11:13:43 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62NlqKbTWbJG+NOjCpE84RtjuefNpxgOERqZsF/6JijZ+yZwac2agGahH/7u/HXplwgJQOt
X-Received: by 2002:a17:902:ba96:: with SMTP id k22-v6mr8392519pls.17.1538849623789;
        Sat, 06 Oct 2018 11:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538849623; cv=none;
        d=google.com; s=arc-20160816;
        b=kQ67P/XwU0QxUiv7KE37TIc2/7CVlty6pAQtTGTMpO4E7nXb6cJnsDbuMlB0GqMEYW
         qvMXoJFgnl9OSDmHy0imhuJz5tjLwmQhzql/p322vaQMc3RLsl43zjKxgHLvcGmjOQwi
         S7+YSA3V6Mjii8CV/FIkEEeanyL8ubgdKc+mM/cvHU5BrBhIwQ91ZWWAbDTrg+NPwqbP
         kw8HJFM6fdaYB026ws1e450OVzMsthUVG0tk0KCFBML2JefxjXiysGCMmAXQU0/m7113
         QF72iUrRyNn0Xr4aaySirZdMlYZceLwsJahp0o7YLXMoEIeDqqGRRqXNlK/+Mdsqw9Ey
         Rjdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vEQnTuUrKXd0dZEPbRVSIaSPTpMCP6zNfE3zJhmDScs=;
        b=qpRsi1Kv8nle02Q6dsXTehpj5ZwMViICsK5cDcEf8EVTnye/1qugYJBwQXNf0cRvyv
         HHfGgUSV7HvTtZDqMJpZii5YrtwI5rYgxJS3D6bh4YC1b3sn1Kbz6AnQU4xRfxV8xmo+
         13opmZ7EySYk02SqYAO9gX6FPa9WoKlVlXJkLTNo9q9CY8sHhSXHeAsUs1+akvBSkKU7
         1C1LyouM5+o0EQbFHlIUaUAepDouog+fTBpTp9eVQulgbO5KtFzI4MZ3KU74s+fRztuV
         YpFPSs+tFLzSEWyIF1cMktcd8amsRe2jI0mVncendd+BJkEhdxfTYoxTb8xhy2btz1r0
         /r6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Cj/tx264";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id s138-v6si613240pgs.1.2018.10.06.11.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Cj/tx264";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id u12-v6so3400062pfn.12
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vEQnTuUrKXd0dZEPbRVSIaSPTpMCP6zNfE3zJhmDScs=;
        b=Cj/tx264V6GJXKw6AZpHyhPDyIiEcct18nGw6x2irpXXvK+HwSUCW03gbbJ4K7Ei2K
         OW7UPKnALvYs/NJ9RMAisPFniFS3S9gDfnK1bZmKolG6b3gcoqwNW03irKU6HLYXltqd
         ctvaiKXNoxy86xUXYQwHQG6ASIBP6e9AEfUzpQoH2Rr4kRQdowMfZ4NnSK8ItQNZLB4G
         FQnrLGImKIz51Uzw4axzjkYoQo0069nNus+TrE/6RNbpUnDcxhO921vs76FHc+YWt0wo
         mx7rVt4rBSzPUWK6+n6qtaNvf5XOFr2P8bvJFsKTWle3Djp6+9vMnooWK6JCrvq/sToG
         +vNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vEQnTuUrKXd0dZEPbRVSIaSPTpMCP6zNfE3zJhmDScs=;
        b=XQb8yL7JkDoNAl9KQ0WmtGs9eA3/ds0mJd30xdINE/dCdeAGfHYsgI0QJIMW0B/Fe0
         Px/aV4lmn+21JE/sklufOErHm/F2eT341Zk0+QAxlJB39dIjCftzBWWs5jw51N2elWKy
         HS1gtSyTYE7MNTfl/HtxmLCntcETWuw/XvC3yFT2ALNYTRU+3syxAMK2o8ObNuuzaUkr
         39aUALuMgg9v0fO2nGwjcV5pKve/4Ce+0N4q2Lz+WBL7RLHP2jvmPEfEFL6+JK4bNrRD
         vCYMOLPoN1D0Q/ehISxuXvXTzYrpxM+cwKIH2jrCjPPie8KUznbgp9awsBsuioONacRp
         vQCQ==
X-Gm-Message-State: ABuFfoj9pDOAl7x0+coy9ICgvTHyMsWs3O3Q7Qy59oufREy1uJomda8Y
	S4XIh5HrUuiOCyi7tzmD7w4=
X-Received: by 2002:a65:42c2:: with SMTP id l2-v6mr14462141pgp.139.1538849623216;
        Sat, 06 Oct 2018 11:13:43 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id j14-v6sm11964473pgh.52.2018.10.06.11.13.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 11:13:42 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:43:37 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006181337.GA7070@himanshu-Vostro-3559>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175958.GF6283@himanshu-Vostro-3559>
 <8b2ea889-5ef2-d0a4-d48f-e09d00299434@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b2ea889-5ef2-d0a4-d48f-e09d00299434@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 11:35:34PM +0530, Bhanusree wrote:
> 
> 
> On Saturday 06 October 2018 11:29 PM, Himanshu Jha wrote:
> > On Sat, Oct 06, 2018 at 07:27:52PM +0530, Bhanusree Pola wrote:
> > > Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
> > > 
> > Would you mind explaining this:
> > 
> > from:	Bhanusree Pola <bhanusreemahesh@gmail.com>
> > reply-to:	himanshujha199640@gmail.com
> > to:	outreachy-kernel@googlegroups.com
> > cc:	bhanusreemahesh@gmail.com,
> > gregkh@linuxfoundation.org
> > date:	6 Oct 2018, 16:44
> > subject:	[Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
> > mailing list:	outreachy-kernel@googlegroups.com Filter messages from this mailing list
> > mailed-by:	googlegroups.com
> > Signed by:	gmail.com
> > 
> > "reply-to" ?
> > 
> > >Please check your email settings!
> > 
> I did not understand.What was the mistake i have done ? shouldn't I mention
> "reply-to" in specific ?

Lookout for the purpose for "reply-to".

If someone replies to this thread, that reply would go to address
mentioned in the "reply-to" which is currently my email address.

reply-to:	himanshujha199640@gmail.com

I hope I'm clear now.

You can add *your* secondary address in reply-to if you want to
receive the reply at that specified address.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

