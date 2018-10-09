X-GM-THRID: 6609200682225369088
X-Received: by 2002:a0c:87ea:: with SMTP id 39mr909540qvk.31.1539089782958;
        Tue, 09 Oct 2018 05:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b47:: with SMTP id d7-v6ls1364097qvc.5.gmail; Tue, 09
 Oct 2018 05:56:22 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62LpKCEjCdTLLG7pi9deqA0QpPQQzj0wdhZ8ZjptLaEO5Xgz/Sv5t+uJiOttr38mrtiqFN1
X-Received: by 2002:a0c:d2b5:: with SMTP id q50-v6mr20942688qvh.1.1539089782314;
        Tue, 09 Oct 2018 05:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539089782; cv=none;
        d=google.com; s=arc-20160816;
        b=gB0cU67z+tpkw/g9S+8w3CeRMSs7FCMpph8pVEi3KxbvLmtWu371EgD6MaBR3RdUTi
         IVzL6O/gjKjVvJ2XwjUKru2qHjjRRm0H7XFn+SrXi/N4L188sTxYxXLHw7tJpObuDu8v
         uEbfFp0w4rRtzfjKTcpLbBr2sRUqkjcW6tivXtgPwspQ5PDH69jDDGACa57fxJ/FbD+e
         d+9G6Jx4fpkNH5Ihi4mVAeWhVh0WTcosF1O19ANU6OVFepA+uyPK/4zLk5+WNGJ3ws9S
         E/U8KlEhh7AHb34POcC1pGDyhI7pyF8gmtAnfTMyC957+ILE0/L7n36+r2hWL37nf1LX
         +vPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dkgxe6hHsU4gV0ybQHQ6ugNmwaGxB/ta0pkrTwI3jJs=;
        b=ReRNK3/WhxhQLNJKqhOyPhwFWBznqujqFmvj2JjDmH4jJkX45l18dvEGNppJ+pBlqH
         YT2XPAy87sWMY2Rkc5V1jE3NFsCQEXwRljgaWYLSKPsCLPKsj/SGIkKkQqFgCgK0YBRF
         Fa/tHA4o2ofWOFn4GPNrsnGvGfHj8ncsALjB8UABxrKITxtszBbuZu7gMGUhvYLRkOqq
         Uff36Fl4Bivy49QTYnpeY8lBppxOb0lTs/uzZ5T+V6A3pIWtVXnmidx1qoQSPeAD2P6z
         aOhfONTZGDpFDAOQ1MlC3d8hBdmUB96NHns9XSnBTQ/UoDzWnTnBnKUE67iqIJhclmN2
         DnlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PV55T2L8;
       spf=pass (google.com: domain of srs0=lf78=mv=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lf78=MV=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=lf78=MV=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z126-v6si319133qka.5.2018.10.09.05.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 05:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=lf78=mv=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PV55T2L8;
       spf=pass (google.com: domain of srs0=lf78=mv=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=lf78=MV=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C9EE2075C;
	Tue,  9 Oct 2018 12:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539089781;
	bh=t6vGDiLFh9ZZ3zSQXZriDkUX+Ej3X41OlYcRYsLPh9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PV55T2L8NPkpbktFR5JJ7cGNUmakoca46LFa38ZA+h99yHE5yCEGUI0bVlMa51AQY
	 h12yzqGwmvScWK18tnAlSOvzWsySrP07W4jlX9Citxsv9U0p86bOLQz9VTP86nIk8v
	 9/zJrcmg2TwSz7GVjDsuu1zCxTvC9MRAtU5Zwyvs=
Date: Tue, 9 Oct 2018 14:56:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: bhanu20anu@gmail.com
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer
 a maximum 75 chars per line
Message-ID: <20181009125618.GB2700@kroah.com>
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Oct 07, 2018 at 05:02:26PM +0530, Bhanusree wrote:
> comedi_pci_auto_config() function prototype is exceeding more than
> 75 characters per line. Adjusted to 75 chars to improve readability
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Your "From:" line on your email does not match this name :(


