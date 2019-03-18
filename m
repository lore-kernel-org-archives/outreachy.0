X-GM-THRID: 6668974051336126464
X-Received: by 2002:a50:a499:: with SMTP id w25mr1788894edb.3.1552894061676;
        Mon, 18 Mar 2019 00:27:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:e08f:: with SMTP id f15ls4144300edl.0.gmail; Mon, 18 Mar
 2019 00:27:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYzWDtJX3F131mD65uNiJmMZXGc0hlJdgivmiVLkLv3viRG1xlODldaA2/C53zqqISld98
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr1800072edr.0.1552894060877;
        Mon, 18 Mar 2019 00:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552894060; cv=none;
        d=google.com; s=arc-20160816;
        b=EIPRzQq4p+fh25Dg4RnBfCYgljPMGFdkoHCQ0kr8LpJu+jm+e8sJ9bfL3kqHEgZNwT
         Hm4L3smgpDAXicA4N27D4NUBQGvgNmxgFCHPMX0XsMiL1zoEtNW0rFPcXk7e7aPm76wX
         MwvMGIivJF8s8Tefl5SeCWdX/e5ROIVupPF5ieGb+sgtER6/Y9jXnUsfYVg3hl2zVh8c
         J3em2YdIvJEjFplyA9A+I3O3Hji6mqXZiu0nq3LBxDr+b+7Rgnk4CptryJvp2dk7sVFj
         yPq6bw/CyBsoPqUzfsyYcelUd6XEQjF3R+PI6oWW6Kj74iHU5Z+8nI31SKY+tntvPmOJ
         1z0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lBJxnWr2OJByQgZTUu+wF7GcO/Lg7yirQjk7aHWefzc=;
        b=RXuJB1ax+e6mf87yRw+wmcpHbXD9+HGdBcci6+FssdS9wHPPHJmVSqLkIQTWwM6gxk
         TBjaQ5EdkSzXFemoCi3ymAj9Aqdwb2bwVRjKOOnMEsDs86lUggnXQUGibkjM/1R0K0ek
         hZo0gZhpgmC11JnavYDbXvsd/Kof7KamgDduQcPeAe+5KxnkA/SqtHsI3GLoZ9474L6R
         452hRGaqgY7K6fbvvXX36LOidDlDx8wqZ4E6D3/95Q7pjqc4zTqn5VKutiR5qzOQsYcH
         6KRVujz6ALNvW0/2l3A0Ydsr9aYlaxBUGf7U5eJlsLrAWfWSJM9RAXCn1gaZg+4N9att
         ywWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si330228edd.2.2019.03.18.00.27.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:27:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,493,1544482800"; 
   d="scan'208";a="374444969"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 08:27:40 +0100
Date: Mon, 18 Mar 2019 08:27:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] Staging: rtl8723bs: Change
 values to standard error codes in functions
In-Reply-To: <20190317233741.GB4222@madhuleo>
Message-ID: <alpine.DEB.2.21.1903180827080.2824@hadrien>
References: <cover.1552858206.git.madhumithabiw@gmail.com> <3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw@gmail.com> <alpine.DEB.2.21.1903172253010.2434@hadrien> <20190317233741.GB4222@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > > -	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
> > > +	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {
> > >  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
> > >  		ret8 = _FAIL;
> > >  		goto exit;
> > > @@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
> > >
> > >  	padapter->cmdpriv.padapter = padapter;
> > >
> > > -	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
> > > +	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {

In addition to Greg's comment on this code, there are too many parentheses
as well.

julia

