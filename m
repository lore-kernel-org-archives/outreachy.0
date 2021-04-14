X-GM-THRID: 6948024355480666112
X-Received: by 2002:a63:2265:: with SMTP id t37mr36710406pgm.452.1618410585982;
        Wed, 14 Apr 2021 07:29:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1062:: with SMTP id 34ls1149743pgq.6.gmail; Wed, 14 Apr
 2021 07:29:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXjBgE5tRHpfSAMddHiMFnhF30BvxOSb6UYjE8TF2EifNFRO7eyrR2LvJUrttUGBIfZA4F
X-Received: by 2002:a63:fb12:: with SMTP id o18mr36955165pgh.438.1618410584561;
        Wed, 14 Apr 2021 07:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618410584; cv=none;
        d=google.com; s=arc-20160816;
        b=vf07P0kMumEszzFs+uus8FPyTN/nU9RzvcWTpH68f4G4mXjDNXTuHxdHZzBpKD1pIh
         4CuiVN50cBkN6UqMrVQP2XeAL2BGF0K/MowTzC7ono8YQnOAlL1KRg1EPr2d0RzAfBHu
         HpNNhYi80DL1UXcqVvB+hp4KEfDtEusLdQ6/Zi4t21nKnkK6DVuaJo6wUN/pKali17D+
         1rjLnm5qVLRwh7pctDhE9PsSjDC3Gz9H1WR07Tb0oNojethwLIK7bpV4TnDhX6ACnSB2
         6Xh48F1NhLjXhN8ZVSA+exTiZ7g/GmtZ3MrL000Hze8447dMgHUj/GDUPQQSRi3Iad0C
         L7Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=YpaedEsSoZkoH4ZTV3tQAgvqrEOqkQk/16wJ0oDKuKs=;
        b=0JzDKrHzVFuNcLh4qa4gSE/qgGdTnHwnOvtYs0X95VUj+jSxJzvQKSSJbuaeg4t/JX
         eG6iP107e5MZMADbaIJr9hWgMFwP67uQMEzBhg8L+780/NfFIFvIS35wKgS8r0yHjEHs
         92uM+4wFu7e3XbAvHb3hYi9901CmVIs91ojyoQzOs2v33JYpWhgbeAWBNCQeMoFCFDXq
         mE03k+hx0qx6+/soss5jNQ44Vhn0OgWNaBmVNElQG1uw5NCyr1bySNGW1ZO33c/ZksWx
         xQ4+ufs/Gi3f3ESeZUJtRYBJPGa6irN5o0oehVY+lvDCF4YsbEiYpi/rIK7lPzaJOvJb
         2APw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.114 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0114.hostedemail.com. [216.40.44.114])
        by gmr-mx.google.com with ESMTPS id t5si1619801pgv.4.2021.04.14.07.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:29:44 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.114 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.114;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.114 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf15.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 64A83180F3243;
	Wed, 14 Apr 2021 14:29:43 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf15.hostedemail.com (Postfix) with ESMTPA id 30F93C417C;
	Wed, 14 Apr 2021 14:29:41 +0000 (UTC)
Message-ID: <b22ffa716ee871f7e09ad7321213a897156edab0.camel@perches.com>
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
From: Joe Perches <joe@perches.com>
To: Alex Elder <elder@ieee.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, Dwaipayan Ray <dwaipayanray1@gmail.com>
Date: Wed, 14 Apr 2021 07:29:37 -0700
In-Reply-To: <1607b040-6bc4-9a58-ae81-4ea0adf5885d@ieee.org>
References: <20210406124259.GA96537@zhans> <YGxhrLZPIPjILWUH@kroah.com>
	 <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
	 <1607b040-6bc4-9a58-ae81-4ea0adf5885d@ieee.org>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 30F93C417C
X-Spam-Status: No, score=0.10
X-Stat-Signature: qxmpd7uwx1trgicc8moxoesttq4xqzoj
X-Rspamd-Server: rspamout04
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+1NzsPGZWu9MVb0Y9a001YjgapTn4QqE4=
X-HE-Tag: 1618410581-635424

On Wed, 2021-04-14 at 08:17 -0500, Alex Elder wrote:
> Perhaps (like the -W options for GCC) there
> could be a way to specify in a Makefile which checkpatch
> messages are reported/not reported?  I don't claim that's
> a good suggestion, but if I could optionally indicate
> somewhere that "two consecutive blank lines is OK for
> Greybus" (one example that comes to mind) I might do so.

checkpatch already has --ignore=<list> and --types=<list>
for the various classes of messages it emits.

see: $ ./scripts/checkpatch.pl --list-types --verbose

Dwaipayan Ray (cc'd) is supposedly working on expanding
the verbose descriptions of each type.


