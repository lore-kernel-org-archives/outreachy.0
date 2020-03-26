X-GM-THRID: 6807662174396219392
X-Received: by 2002:a05:6638:28d:: with SMTP id c13mr10265484jaq.17.1585265181050;
        Thu, 26 Mar 2020 16:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls1351551ioq.5.gmail; Thu, 26 Mar
 2020 16:26:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvOTIQ4AF1tqr6vAWsS7sXYOlM9Tp+yUo/Uyw2boFaCX/W+oUjLGiTrQ965E5ZwRmw67DtU
X-Received: by 2002:a5d:9b03:: with SMTP id y3mr10281167ion.35.1585265179728;
        Thu, 26 Mar 2020 16:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585265179; cv=none;
        d=google.com; s=arc-20160816;
        b=hfvUxjtUaMZ7zC4aPEOEui6neFW+pctI1z+H8jpEM+oN5EbYGucHhZwn7qoX33rKT5
         AuJ7AIrN0hJtMIc8ESHLH1jdk/JZ+Ly5PBx1EgL07HrCcdXRoLU2XUue6RFhD/DpW/Qm
         Lv4x7DpxprIXFTdd9eTvsQidV4drHNIzpmMogevWrRqxVMSTBEiSK7QoWqmoO6lSKGew
         pSnkPJfLRHOuFfrXhtXqkM59tCNLgoV8fQkvJqu/foUskFldhTFoin008i+z/JbEijoQ
         VcTz0WvfMD0r2W2HcoZJYseAP0rWs/1craDK0krGc/dA2l/7QzFxOSQJGxnmrMeffsAW
         K/2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=NYonkiKcAgz7MU6FMU9aEdGHS8G58AAgrnpsP4lTHGk=;
        b=EeC5qUJfWXty6bstlXX2lPMTm4l+ijIBYolnuIh8r7NwICv8nhJVMx+nAwFYW3+s9W
         mB7lx/EoPSGyQ/EOFfv/h+aZtqh8yr0dqKquhNkh0Sj4oQprljLKH5X1ErBd/Xt+U6Ih
         fA8jkzneXyIYYP0gFcBTP06R/kAc84RPhoNhLs2ga3Zboye2jGeEIUWjdHILhmP75/ap
         46b/5+K74uCouN8tYHCbzNylK8zIAT496zGqD3EGINqN/yqLxbAB69lpXxWL4cnVpA6e
         3jy97MH54k5LOFQbTRO+IxlTtT+DH9Q9WtZKO7Z+1EUP6u7vHRMJTu011dxxnST665tm
         78AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F09IBZRr;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j25si221720ili.4.2020.03.26.16.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F09IBZRr;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id a49so7844650otc.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 16:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=NYonkiKcAgz7MU6FMU9aEdGHS8G58AAgrnpsP4lTHGk=;
        b=F09IBZRrglR6i+6VTDIUsu/wVr80I0ewWYxd2Kw0eZeCmLB1kSdz78IqQZGJZLjxbC
         sLp3cqxZegZZouh69K6NeyjwjRC4dUKoUouWU0H7Ol9ZMuLrPN/PbeXEQMXuyqVlTYFg
         s6UkDLa6mpuLdJqJSOvGS/OzyerF/GkEQThCNAG4HNgZ4vGo8LW6K4R+Wh0eyibHWo7e
         fVwtdjTBMeZMgeuHoelRDs+o6nweBIy6EYyXe2bzupRn7R/M5z+tcJ0PEW9bpY7meRHr
         gTFFDw0et0iXPbEsTMXPc1KQiFIaZKVqFcaxLPqS9lxNHv3DERH77WdTjnFVFkRTfviD
         U/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=NYonkiKcAgz7MU6FMU9aEdGHS8G58AAgrnpsP4lTHGk=;
        b=iivRf2tJVd9DhG34YHAdpq5myT7cIIv6RZRWE9nOVRVRq2nCbBb3psqyTxIC6OL6nP
         hFrJGtDEVSYcq2s/OXVEY5Yl4sFmkJNlpmZV6cyzrJW/8hLh90VL83YfxxJniH++WD0I
         SBdTyc/A55VoLlpYgWIm46Ea45fz1mY9ur6XxeBwgTCnhXaPUkAEfQ5zLqaizJ6+ISTI
         el8SilPGkmQzpdxB+7i/l+Ht/SV4xCUTR0mK2paHoLOzDmf6q3p4ktcEJUOVgyemW1s7
         MFCXx62kkSs6AApRUAUZTz+x6Qhksqnc37iE2Nrzwb6AB+h4dR5Y3TAXH5K+3bLZy3Y5
         Z9yw==
X-Gm-Message-State: ANhLgQ3bzkResLfzmP28WE6iuNa7RUIqR9R1nHymgkI4wSBH0q7bUmrY
	KI8PTqcHqrR9tTNsG4yAXT8=
X-Received: by 2002:a9d:1b31:: with SMTP id l46mr7760591otl.95.1585265179401;
        Thu, 26 Mar 2020 16:26:19 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id l15sm951739ooa.36.2020.03.26.16.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 16:26:18 -0700 (PDT)
Message-ID: <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
From: John Wyatt <jbwyatt4@gmail.com>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Julia Lawall
	 <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>, 
	"outreachy-kernel@googlegroups.com"
	 <outreachy-kernel@googlegroups.com>
Date: Thu, 26 Mar 2020 16:26:13 -0700
In-Reply-To: <20200325091541.GA15158@jiffies>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
	 <20200324064545.1832227-2-jbwyatt4@gmail.com>
	 <20200324100323.GB7693@jiffies>
	 <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
	 <20200325091541.GA15158@jiffies>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-25 at 09:15 +0000, Quentin Deslandes wrote:
> On 03/24/20 17:32:01, John Wyatt wrote:
> > I do not know what these functions do.
> > 
> > There is no function documentation for:
> > vnt_exit_deep_sleep
> > vnt_mac_reg_bits_on
> > vnt_mac_reg_bits_off
> 
> I understand, however discarding the return value of functions that
> could
> fail is not the best thing to do. Whatever those 3 functions are
> doing,
> you should rely on their return code, and if one of those fail,
> vnt_radio_power_on() should fail too.
> 
> > I am a new kernel developer intern with the Outreachy program. I am
> > trying to fix a style issue reported by Coccinelle. I do not have
> > that
> > much experience with writing drivers yet.
> 
> Don't worry, I'm not that experienced either. If my request is out of
> scope for an Outreachy mentee, a more experienced contributor will
> pop
> in the discussion.

To any of the Outreachy mentors please advise on what to do.

I was asked by Greg Kroah-Hartman to make this patch set, but Quentin
Deslandes asked to return undocumented return codes for this patch to
solve this coccinelle issue.

Thank you,
John



