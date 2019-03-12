X-GM-THRID: 6667430437644664832
X-Received: by 2002:a2e:5bc9:: with SMTP id m70mr284471lje.18.1552384503639;
        Tue, 12 Mar 2019 02:55:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4d0:: with SMTP id a77ls2361859ljf.1.gmail; Tue, 12 Mar
 2019 02:55:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz9DACBCw5jmghomoSzg3/kUv1lrqyoKy1bSuZnX24s8XUvN0+D6OUbsIiKJHGHh0UHUuyk
X-Received: by 2002:a2e:864f:: with SMTP id i15mr364802ljj.13.1552384502490;
        Tue, 12 Mar 2019 02:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552384502; cv=none;
        d=google.com; s=arc-20160816;
        b=Uop7eJgCnho3aclpzO3p06KjIfOzlJ6tDFGaoXMLZMs8rH/pSXsN6SHEXoHlzJ36wM
         ye1UTC13q6L/nSMM0F+Rqm84WLwy+gb0OEifJ0mQzOFi1MjBCY0cE98pD8OH7+Qd4iLI
         tObC3FCiUHl07eXQfEzZLKK+EZNUwfucEW/UemKSSRz/rlcWCxCOYRAOyqwxq0bJWnsf
         +P1lRIUKR5ynCVY+UMalJ4iBtDBLvzSy6NylR3nGrGkmQiHRXfHi+ZamLcAnfT79vlfN
         i6y+heUTM9/HPCOHIXGj7LTkagkHbWVo8s8WQyTyzCNGMOyyGyYdDmL0XMzO3BdO98/1
         d6RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=FU5QVwEqOT1IhrqYWT8tAiM3C230D5IehN40QFHal6g=;
        b=HGocYB0P+A7NnTeYMdr2DeEvjnTciveyBEk/Ap4BPYTZ5ogP2buTgM3he2Sss/q7B0
         eo5GqH4ZUCNepaM+wfY0DXt2VUl9GeClgBUZUal2J3bC4bSa3o0hDe/6DxLPMcQgqMuB
         aVLinQweftU+NcqxOiAUhBlNC0o35uaZBnz2JrhHJntjq04q1DEbrdsNijxq6l777Rve
         bTxJhukQEEKuBroieTl8x+BM6SbHX/6DsGiWJEphB92rgtQp7IFwRvQDx6vibxlfH+qg
         3+o7mt7WsZgR8PIP7USQIXt8CXcoqWkvUYMMCehQcbnWW0e8uyqKbiOm7HmURtryxxDk
         oq4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id k13si423550lja.5.2019.03.12.02.55.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 02:55:02 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 20E04D06D;
	Tue, 12 Mar 2019 10:54:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J67MH0QCSa_i; Tue, 12 Mar 2019 10:54:58 +0100 (CET)
Received: from function (dhcp-13-99.lip.ens-lyon.fr [140.77.13.99])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 6DFD1D06B;
	Tue, 12 Mar 2019 10:54:58 +0100 (CET)
Received: from samy by function with local (Exim 4.92)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1h3e7d-0004QH-Sr; Tue, 12 Mar 2019 10:54:57 +0100
Date: Tue, 12 Mar 2019 10:54:57 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: speakup: Change else-if block order
Message-ID: <20190312095457.6r4f76c35ah7znxp@function>
References: <20190312091512.2315-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312091512.2315-1-etsai042@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Wentao Cai, le mar. 12 mars 2019 02:15:12 -0700, a ecrit:
> Change else-if block to silence checkpatch.pl warning:
> WARNING: else is not generally useful after a break or return

This looks like a false positive of checkpatch.pl, I don't see the point
of moving this else if block.

Samuel

