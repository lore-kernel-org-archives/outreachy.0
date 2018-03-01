X-GM-THRID: 6528077387977981952
X-Received: by 2002:a25:aac7:: with SMTP id t65-v6mr1537064ybi.35.1519937787370;
        Thu, 01 Mar 2018 12:56:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.212.209 with SMTP id w200ls485361ywd.14.gmail; Thu, 01 Mar
 2018 12:56:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELuVqaSE8q5WkhUY3jAnGVDchpZufzpMd6vAajqo+4bCKYg5YzexBzI9F2dxLzsFmJhhWv1B
X-Received: by 10.129.4.14 with SMTP id 14mr1394316ywe.81.1519937785477;
        Thu, 01 Mar 2018 12:56:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519937785; cv=none;
        d=google.com; s=arc-20160816;
        b=bDPVEV62nQPTxhhTtGAsyDMR30RDtEOFEi0Pk36eDxUB4C6MQRHrJTUwvSZRojvdud
         0rQ1xoxk+v6/iIh5iHnsqTJ9fgsU7s7ngVOyh9MHWEA7hfglVCWr8FAgu7fQnl5rBvJL
         FCBjkkRNAFbWZUF6p2a6Bw7enk3I7girmLzK2EWXqN1Pz4/0J4QOK14bqn6eBK6gO239
         GNf6Q/fWsP6chd9Y61uIVACmFhFiQ7iw4VxiQYvWSFMUxWVE0tahe7FDML6zPuJzFLkL
         coSt68qQ67rtw7JlAKDGypxM2WIYVeNDOG413pLgTsv5AhEkMnha3ABQc5jW32psqUVf
         adBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=XKJ+Z/9nbcqBxgFfSYFJwQoFb8qVsac+f5bMWVYc54A=;
        b=uxKTNXp6MME6wiihZ1MuKn+iSG6vwXXakI4HmhuwEKtcYPOvRaP5DAJWoCBdmaADgb
         fOrUpo3eMWrWldZgMWYKiwRP21Dq2NKS7iRlZtnynXQfZx4Xk/Walx+lBysz5BD7phmd
         e92G8oDW8i0tN8L7QlvV1rccuifThCKD5QL+2AWA2eafc5R9/VkAafWzNKtQHjAKOpVF
         wyiehasNcy+t9nDro+fs+SyZL+UGnaDWa4BwomqM7qtrxHj2ywHMPK1aGIguEhQptIo9
         PmGAG8RlBeqLiedQtxwPf/cGYEAYWe1wpR9nSjZfcugCK15E+JVKoRBC97VgP2eVUziZ
         HjQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZvCUP59R;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x234.google.com (mail-pl0-x234.google.com. [2607:f8b0:400e:c01::234])
        by gmr-mx.google.com with ESMTPS id q128si300832ywc.4.2018.03.01.12.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:56:25 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::234 as permitted sender) client-ip=2607:f8b0:400e:c01::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZvCUP59R;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x234.google.com with SMTP id m22-v6so833307pls.5
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 12:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=XKJ+Z/9nbcqBxgFfSYFJwQoFb8qVsac+f5bMWVYc54A=;
        b=ZvCUP59R+HjhTqPSlCt1il64GgHO6x5x4yo9XZKn7N/qKDZ/eEsbNu2LmNXSc0WUtA
         2NvhGCB9souCvxZ02jHPwgpqbrDYb8P/3hvdcQ0l2GYhoVNt4Fd+cN/OIJ0cm4ismTqb
         RFZPrmrHyEwldbMuBI1JCCLrVcjSqmS//rfHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=XKJ+Z/9nbcqBxgFfSYFJwQoFb8qVsac+f5bMWVYc54A=;
        b=q0r7/a0PsxgtZN8voIpZCzJQnUq8+q8pprHrViCT8mancsXYIPcJJIfm/aAbznEHQo
         QpKYcI8D1pJ9inzjGfj09m3My93ES2ih/bJax6x+zSSQSRLrpj3n1WzsjTkP1DrZbu/H
         tb83YvJiF4HB4wRuSQ5nLg965FCtMDT6lA6Jv/onBqRGPLSjGQyVVxoXVeEAGqg8yrjU
         XxBlKf/KuAP+1qU3hxd5DfFoeD9wnTKLcolMabfdXrxcSAP/MfJ0vIzzGhURKnfj0nsu
         dokvbWzTD18LGm6t9EpF9nn+SmN5EYgwpfxBP9ESiLHAEc9dZO4ZZmuCgDdkxa53E4hl
         0aTg==
X-Gm-Message-State: APf1xPBq9/0pEjgkQ9eDuzg4rQEnTsQCf6zg5nwDkirXWaEu+Eo8Ideu
	b4j+xQfJB5LF9IlYpDpqgr0kbVHM
X-Received: by 2002:a17:902:20e6:: with SMTP id v35-v6mr3043372plg.226.1519937784393;
        Thu, 01 Mar 2018 12:56:24 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id p14sm8158180pgu.44.2018.03.01.12.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 12:56:23 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Help with Mutt
Date: Fri,  2 Mar 2018 02:26:13 +0530
Message-Id: <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1803012135130.3474@hadrien>
References: <alpine.DEB.2.20.1803012135130.3474@hadrien>

This is with response to your email: I think you will need to give more
information. Do you get some error message? Does nothing happen? Does it
crash? What did you do before, in terms of setting up configuration
files? etc. Any particular thing about the situation that you can think
of.

My response to your email is as follows: I followed the instructions at
OutreachyfirstpatchSetup and Outreachyfirstpatch at Linux kernel
newbies. The instructions said to "say 'no' to creating an inbox for
now". That is what I did. If I send an email to myself from within mutt
(using the "m" command) it shows up in the inbox; but no other email
sent to my account is visible. (Up until now I have been viewing emails
and responses in a browser and composing replies in vim.)

In accordance with the instructions, my muttrc file contains the
following lines: 
set sendmail="/usr/bin/esmtp" 
set envelope_from=yes 
set from="Nishka Dasgupta <nishka....ashoka.edu.in>" 
set use_from=yes 
set edit_headers=yes

My smtp and git appear to be set up fine, since those are how I have
been sending emails so far. However, I don't know how to ensure that
emails sent to my email account show up in mutt. How can I address this?

Thank you for your time.

Regards, 
Nishka Dasgupta

