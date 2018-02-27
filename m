X-GM-THRID: 6523882080322977792
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.46.5.200 with SMTP id 191mr933965ljf.25.1519738258671;
        Tue, 27 Feb 2018 05:30:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.129.207 with SMTP id s15ls152147ljg.10.gmail; Tue, 27 Feb
 2018 05:30:57 -0800 (PST)
X-Google-Smtp-Source: AG47ELvqqs2i5kZandDoD8/ThjrjQ0kFTkfbsNugogLO1BhKy+5kCLGpTvhvv+5Q+gZe1yd1Nwdt
X-Received: by 10.46.145.198 with SMTP id u6mr691700ljg.14.1519738257074;
        Tue, 27 Feb 2018 05:30:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519738257; cv=none;
        d=google.com; s=arc-20160816;
        b=tFnOLDD4Pom/C29tIAyTp5r3bdwj7PApwkGT0w3Yd4Sffj0pQ4A3w9Ishz21Pna1wk
         /OWydroqJJVUijwQcqbuquIPB1O0QMCyq98is41uQ490XN8AlcQ9KPhh49CIs/E/Qfyf
         0u1gxGSwntJM2XlwaOftmAs0Luj6Mgo/1YWGWSEE3P+So5ZeZrarcnatwCifzutSBj8d
         hDxboSmGnqpfw3TDgdueglgDyMnJKZAEz2e+ggcMV2wDck/o8aG1D157qt7bOP98uKEx
         fDP0GrC7VISKC4FXsMZoi7F8hr36jVay4GeKU+51Lwb1JpZuydyNOiRrx/24Sa/l0vFE
         A4dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=IBnMQDOmXBvlvah0AV2AlOU3yNAOMycCtdK9BNESP3Q=;
        b=FRfhF7TkY+L1hnXR3Cn+f1OdlNX4ANgtLu24fDv4ezkgYvcijxdFNH9HyNZ2ztvPKw
         g91EbwB464L6ZnEzQa0UjCF7ErDYvzxAERPBebE2o5Quj7QoSTRWLITst4Wd1vfd/vN3
         PsoSxfZks05X+/QcRb/5mhkokoUcXVzeQKJB+EKxK1P/CS81LsORtNTDatY11MzByOLM
         xDT4+e9CRMcvgf+tW0l7gYrrpFTkK9KScQ7WfEjtiroEYojQUga2y8q7/2pobWQZKTAt
         ztcbvthRaQXav/jQMUcmxby9acn1igBXJvNu0a0tfDikc4IbHm+zzQ5s3K+gik4Iwtnt
         Sbcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X+EDmQUA;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id v6si168748ljc.0.2018.02.27.05.30.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:30:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X+EDmQUA;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x22b.google.com with SMTP id z9so23674345wmb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=IBnMQDOmXBvlvah0AV2AlOU3yNAOMycCtdK9BNESP3Q=;
        b=X+EDmQUAP5NFE9SqVwIk49kel6vywuFeHUPmHWvFgINg6jxE9z1X36APzcz1mUyo7D
         md9Ctj7Yl7H9Kc/k5n+0jbFDVkTAcEbE8YDJUNJ6d9rfD057NSy0KsqrLy4Xi4y7h6eA
         SJNNnMY1yUM5oSHnzL9hhUxgYbazUg6RtxB9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=IBnMQDOmXBvlvah0AV2AlOU3yNAOMycCtdK9BNESP3Q=;
        b=W0FVl7CtMwDYFw5ZGMoX6sFMOB6JnA0MBsmvoj3qGPCo4T3S6GF8MFOCN/G0YHx51s
         FdIZl8zUdV5x4+CvcqkRRbpwnmje/5X8n+ucr0cgZEnGy2z4NURy1W/pLK8lYTMqEu35
         NsJSyjT7WRQ0nC8d5RMKOjkPCMENFJEVzKwAHjpMQ7nTaETzBSiPac1uwU5ef59mCmpQ
         waL/pfEbbV7jEo+Sh6TLbS08E+qORm9Awkc8q51RbfdsFrCBU7DeHCFK4uRMlgaooWUW
         H3FU2BVDW0oF+sCH/52fjjMY+dVWPCMFy9KQPHIRCvt+D2w0laf3GNXBTI/9LJm50953
         IQJA==
X-Gm-Message-State: APf1xPCUtRU5uHQU7rwgSXIPF65pOyDGK4EduD+ojJtFTIjxbGqdxrAN
	kkqKJFnc880vq8bv549px+8oQhgO
X-Received: by 10.80.200.203 with SMTP id k11mr18075890edh.161.1519738255913;
        Tue, 27 Feb 2018 05:30:55 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id s7sm9319284edk.61.2018.02.27.05.30.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:30:55 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re: Re: [SETUP] Difficulty with dmesg 
Date: Tue, 27 Feb 2018 19:00:42 +0530
Message-Id: <1519738242-4970-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1519401525.2617.295.camel@decadent.org.uk>
References: <1519401525.2617.295.camel@decadent.org.uk>

I have now switched to native Linux. I apologise for the trouble.
Thanking you,
Nishka Dasgupta

