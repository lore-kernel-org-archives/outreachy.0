X-GM-THRID: 6528077387977981952
X-Received: by 10.25.80.68 with SMTP id z4mr711672lfj.31.1520102303293;
        Sat, 03 Mar 2018 10:38:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.151 with SMTP id 23ls1316099ljz.5.gmail; Sat, 03 Mar
 2018 10:38:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELuJ6YX4bL2ND3hUrCSxA5Qe16nSWrJqGtPLRKSKGj4dfYEMlRQDbdw/xTcYyZDlm7AJZ7ch
X-Received: by 10.46.23.6 with SMTP id l6mr682880lje.11.1520102301447;
        Sat, 03 Mar 2018 10:38:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520102301; cv=none;
        d=google.com; s=arc-20160816;
        b=GQB6JRI9Hp7Is8Z5q9Dc6y4ORMrwEPR6FGOW/QZFOhwPcVKPX9hxaGgStfEv4kofXo
         TFtfXaYh+MRGVlBi7SQtYG5ZMr2xvycimY8vcjqbHzqG0xhPKDdmZYl/w9qmdb9rntiJ
         N9eFg6HfKLTwhjs2gj5xRA9IoDbtLuP/vVCAOALXYd8HGS2WYh0BpCZKa23SeQGAgWia
         F5vIg3I+vjBJn/fW2fhfPLW8pAwO0AtNKXPgjNgVoYX1zDhmFZA1CCV6BuNZJGHv7pA5
         xzP6YZp6AJqH5weRbJGpArFEaRcH369DvRg40fkxyLbXC83LHvVqKpX4xOMu0/6KuygN
         DiMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yIjzgAe86urwmbGbyR4Guusfi/mBi9zGiMKDff9TpF8=;
        b=O3S51fK7KAUkVxY7MW5gbeumKTzYk6p58OrOAffteOly88B+RjSWgb6nSpYUFOoFLk
         ftL+2/gp0vT+ytFMWTjBVZ5Pd1gzcZScSsvpuFwCON43Vzx+FMEANor7XQ6RDPnUZxt1
         VCToWyIVbPWv4SrBGHRRr8gtS85lZPb/A+xZCPujYRTvF+Zb/5E+Uy2FV7vzpscY4D74
         IedC7m3LTXAtOuuBerRKFmSFxA8cp++IMnjo5NK0i9UnUbR32wxStCwdKVnhQCXvp/4m
         yhqaL4c4lFgGljbAsVjP8oaJ9myjwqgAJsB4jLmqH1cqh8JRGI76m7SaGveGd9ZTkKdI
         LgmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s26si297085lfi.1.2018.03.03.10.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 10:38:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,419,1515452400"; 
   d="scan'208";a="256845074"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 19:38:20 +0100
Date: Sat, 3 Mar 2018 19:38:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re:
In-Reply-To: <1520101670-5268-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803031938040.9544@hadrien>
References: <alpine.DEB.2.20.1803021901370.17455@hadrien> <1520101670-5268-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Nishka Dasgupta wrote:

> This is with reference to your link with instructions on how to load my inbox in mutt. The instructions worked and I should be able to access all future correspondence in mutt. (The most recent emails, however, failed to load in mutt, which is why I am still not replying inline.)

OK, it's great that you got the problem solved :)

julia

