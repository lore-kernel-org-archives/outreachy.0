X-GM-THRID: 6806903169675689984
X-Received: by 2002:a6b:b593:: with SMTP id e141mr16413850iof.71.1584902694919;
        Sun, 22 Mar 2020 11:44:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c9d1:: with SMTP id k17ls2780577ilq.9.gmail; Sun, 22 Mar
 2020 11:44:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDPNRLBBtlqJxdAtm/8VLcg+qbas2rF4GetQSSowE8028pE8wkx/8XDP7cWI4qIKHX69qu
X-Received: by 2002:a92:b68d:: with SMTP id m13mr17653193ill.152.1584902693697;
        Sun, 22 Mar 2020 11:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584902693; cv=none;
        d=google.com; s=arc-20160816;
        b=eLsGtKgxGRA8ZPd/GbynWDWtALKuFL4bVAttQ2/nfUItCpxsm/cjQoloClEPqQnwyi
         pJjbSdLAn6XUAUacwjQLbULOYB653kNrxRa9BOv6C4dGN50okhCed1laMXfnQFzSWaMg
         vGstiW0gN9MWTbrpFt+6xqrAY3RkqskakrQJXOILXPxcj8CF7Pn2EBoUwdB6T2timKzR
         6YNXj6CXD8KvLHgA3b7/wiGL5NMIy88HpWATuYYSe/ROgkTrV5pzRbbFgIY3Hy3kzkb5
         bVxbAaAsbWqmmXis1RnMV+32b0DosrFP/G6mtbaiRqPjdBR3e85mqRICeRnBjIDNZhjm
         A7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iPpnx6PsJMgc/5S1cqyycgErdQhyKzQi7HacMNjQWaw=;
        b=dtZfRPyU+U2JySpzkTEMBRKs68wBkU3PPmQyN1CcVndg0jpvAl2VtAVHii/6E5/jSL
         i+IdTmOqhCWxi6Q5zmbuKCIv/HwKM5ABvAVJoraXlu2WAAMdQbCiuKoaphBpWc9YGdE8
         Fdoig5ds+oFnfgY6N7p65sEczKKuRQ/XOK3uNsgi4QpaN3Pkj6cD1XKZswCDnAZsLPrf
         OAU/QlS78mAAYJjHqliepumL/Q1BFitg7hJhrqqcTII4gGoTrzHuF45MTP55kVNr7Z8S
         mXbBNTy1yD04ure5UtWQ94+69sE9JKHd2ccoFMHfTsspoBkoY5W0yt1pmHz0gvYysfDq
         2jNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACtuM56n;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t125si731536iof.4.2020.03.22.11.44.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACtuM56n;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id z72so5998595pgz.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 11:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iPpnx6PsJMgc/5S1cqyycgErdQhyKzQi7HacMNjQWaw=;
        b=ACtuM56nFbnu1HDCvA3AS8oI8sf3YiJl6tbXopockoZbILzL9RVtLVr4bE0tP60+Vz
         cfiNN58HXUWZJgHghoNX4Lc/Ql0W9jd3UR2DZYJVRs6i53RKpG9KYrov+Z4Obds93SIe
         xMrqoy1pcpRycL9HFdKiAn9xD71CbiygscybDKnPGk9NUDGpowRFmP68TE9RVpKVNXAw
         jZ9xRqRf6BdS6aPsApzDOUo7VYwXiW6iEVAdCVUG8FdiBUrNpr3p4C7f2hxxTXFNvQ6t
         sS49JpFCLhH5xnMGgqpKNuqsfJnN+1J2MUqHXxxg00iwNDhwY4zawrt4JemzDVPTP2gs
         FQKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iPpnx6PsJMgc/5S1cqyycgErdQhyKzQi7HacMNjQWaw=;
        b=HGLF59QIKBec7XwtFiXLjQhtjhiCSBGJiICwmq0opUemdkxGow7n6Z8j2m9JI+a41V
         ukIz3buUDFdl5xRJnNVUdQMpH/ghYTYuVmlvjzTu85PTIbaZ2e+eKOoTlhddlwMEF8sH
         qAl+0kJicaq1h5ClRfmHh+dQXh3kLL+umweuzcaOEqFItodAywx9RIekHLZzGy6fgq3q
         8vxcrNRTGHgGjT3NoUcTDhZvXfodoXlmm47sMUjNDfqjus3fpIo3KyStleOG3GsYW8cL
         UQ2cLLd+Lk+uXZNLKiaYInxx09y2SMHg1fk/uJE0FQsA0fGc8LQaCi2AjIOKrSbAckRC
         y6+Q==
X-Gm-Message-State: ANhLgQ3X0yxZq/LnN4Izx4m4nAgjhgKk25z7F5MnR6jBh6CTH2kr2INI
	97A3f8TxJ38Ut+0Es5TqhiVQks9M
X-Received: by 2002:a63:5c02:: with SMTP id q2mr13904070pgb.262.1584902693145;
        Sun, 22 Mar 2020 11:44:53 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id 66sm11426320pfb.150.2020.03.22.11.44.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 11:44:52 -0700 (PDT)
Date: Mon, 23 Mar 2020 00:14:48 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: Re: [PATCH] staging: comedi: ni_pcimio: remove old unused code
Message-ID: <20200322184446.GA11965@deeUbuntu>
References: <20200322054035.GA9669@deeUbuntu>
 <20200322070401.GA64528@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322070401.GA64528@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 22, 2020 at 08:04:01AM +0100, Greg KH wrote:
> On Sun, Mar 22, 2020 at 11:10:39AM +0530, Deepak R Varma wrote:
> > Found multiple #if 0 code blocks that appear to have never been used.
> > Additinal comments around intended functionality may be introduced
> > separately. As these commented code blocks do not appear to be
> > ever useful, they can be removed.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > 
> > ---
> > Resending patch for review. No changes since last version.
> 
> Last time I thought I said to leave these as-is as they document devices
> that people might have and would be able to add to the driver easily.
> 
> So I'm not going to take this patch this time either, sorry.

That comment was for a different patch for dt2801 driver patch. I will
discard this one too. No problem.

Thank you for your time.
Deepak.

> 
> greg k-h

