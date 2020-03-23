X-GM-THRID: 6806824358191824896
X-Received: by 2002:a17:90b:3656:: with SMTP id nh22mr7143270pjb.71.1584959704247;
        Mon, 23 Mar 2020 03:35:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls7360178pgf.5.gmail; Mon, 23 Mar
 2020 03:35:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vucNAJMwvV22CiOgFrbmatVQhZADi8yqsQ7UXHtM33qStZhgCfxhfiBD9fPr8EjTTPdPxqW
X-Received: by 2002:a63:585:: with SMTP id 127mr3439020pgf.196.1584959702627;
        Mon, 23 Mar 2020 03:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584959702; cv=none;
        d=google.com; s=arc-20160816;
        b=RIdtKHHKc1fc4Pzo6pZUT1CbXPpSmL/+2bq2+REsqaEUVj8xL4HMBQdh+v3hKgMfih
         VUKcRTOmOETXgEf/oxdw6d44DojWeZ05EI0DRvaBld4cvQgEGqFS2YiYL344Nd4WrAIW
         NOjR8UMOuk7I2IktiJ9/meQqzN9DP+22Jux34QqXum9YXcHYL4dgR6CJoi0gE2pO34jW
         jIWAWcOCPhTSLFgRCb2RIuC+Xgav9mmkZc4givUPaUfI3mtoye8OT2cmD44jggsZfsnu
         0qQCDG4OKVlRPbA1Opylg/yYq2AkzWYym/DNe6lFnn9LnCHoBP9PN4MNgXmFe2iFfweO
         pF6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T3v/r/tJPOQGhK48XWuVjgoO1DsVjEz8IZfl1yiRM8Y=;
        b=WZrKE6cjnztHhBpX7J1cY2bRx0Pfo3kFzzroMGHFkQKFd9tnQT9sDj4nYREru9vNGj
         fHrF0DW/V4wYrpSPDlZBFerLUip5BW+puX9wZroQRrGBS0wzw1V1cBAAeO9eM4p1bHGT
         SNXe8duZLakCK4bc7ZoO+pPJW5RrMmhfZo0Dve9pXuPpyPTV/46TmgT+kgjwFIKWXZtT
         i5D14CK9rD00W1xF+yBMEHyw6Jn+LOyIiudWLr1aStmkJwbuRK9JoI/mLZUnGuWtaxbl
         eAOZoGOb1Wly940K4XouA+n9iHCxOBXc5Y0SLOaYR7fQcMMqacRuhw1sc21v9iDvue5z
         cspg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pk0EfFof;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y1si286956pjv.2.2020.03.23.03.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pk0EfFof;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D462B20722;
	Mon, 23 Mar 2020 10:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584959702;
	bh=T3v/r/tJPOQGhK48XWuVjgoO1DsVjEz8IZfl1yiRM8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pk0EfFofh1UNQ3Y7cqV5omNnYsembdeCZn1kDeBzHjonCBvJ9E0r/EjBIVtLSRge5
	 0uejJDURqB0vd/Oi/7dbpvwcSGZyCVtnaaIv78HIxlWXu9UdJtEZCH6POx9zrcgeHA
	 MfigX/rz++ISF33p6jSvpYFGW3QBxMi+EyASSCe0=
Date: Mon, 23 Mar 2020 11:34:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: hp100: Remove unnecessary braces
Message-ID: <20200323103459.GA452208@kroah.com>
References: <20200322235103.GA14205@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322235103.GA14205@siyah2>

On Mon, Mar 23, 2020 at 02:51:03AM +0300, Gokce Kuler wrote:
> Delete unnecessary blank line.

This does not match your subject line :(

