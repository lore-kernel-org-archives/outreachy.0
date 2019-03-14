X-GM-THRID: 6668128848911007744
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr2800545ljs.12.1552544731857;
        Wed, 13 Mar 2019 23:25:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:63c4:: with SMTP id s65ls571468lje.12.gmail; Wed, 13 Mar
 2019 23:25:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfEmYaDP8UWfMMHPBwHi1wHe1SudHFzfRNNjP+A3j/rSUNY1xlUzg8wH5FVx+8l9kK2dl5
X-Received: by 2002:a2e:8941:: with SMTP id b1mr2723857ljk.24.1552544730992;
        Wed, 13 Mar 2019 23:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552544730; cv=none;
        d=google.com; s=arc-20160816;
        b=O8hL+UDrWB2qcx5dxkqhc5PwVl+gcFdmMd397UIfKMEtRtyXP1/gP2+skt/lElO37j
         09jsDkBsU2YlOv/YSm0hdrJJFN7v8o98hRIXoYssoROajao6dE8sfMto8NaWlwch4qsV
         MiCzagpizqYfLKCtrzwNQhR+yrR+vcL9z02rOpyk5YSnHPW5lRgi8bqrueYWDZNF7dzv
         DlstLipJUFE4i0o7No2vCd/LdB3xN6JToTiYUdrG0+AkwfqOIQ803BeAOLyef41f60Gq
         mstaSRq4VEtxGay1VS8XNX/CWPp28z+CUfKNtMxu+8uvkfmqaR2BG5mRixbNTOeEBMc+
         cNEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=6N824d0AJ2ZI0bS3jhpLVRRNIyq3SsP8cdgv247k7fc=;
        b=kiwXMPEvINJe+yq/kL4/+1UmIdr9nemmZaQ2CkV2P8T8EtLqJIQ9iqNCy/7sMf3p8Z
         VWpIDgKHuKiADn4ph3a7KNy3yd9TggYoq3A6TGn6pt73MTXFnq1A3WzCLz2hEiezaOEs
         DzAWtzazppLYFpLXr26ts/HPkk4qaRYeh5XNqkIHTSa0JC2JR1RXCHk19VAQBfS1zs1p
         pJQ9+EhjxEtQnY6hIZFm4MXo3w4ezffVz0SAjKd0FqxXKkob2NILAAS16jfgIcU39ks6
         qg0sAg2DbRg/nULMXjkvnQ3m2xQ3U54HaAwpIxLCeB22Rujr1ZfFspMT09YdAUkZXg3H
         +edA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k13si677718lja.5.2019.03.13.23.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 23:25:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,477,1544482800"; 
   d="scan'208";a="373323263"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 07:25:30 +0100
Date: Thu, 14 Mar 2019 07:25:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: return value Coccinelle exercise
Message-ID: <alpine.DEB.2.21.1903140720070.2814@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

In many cases it turns out that the return value Coccinelle semantic patch
reports on things that in practice people would rather have left as they
are.  One option is to choose carefully what you decide to send to the
mailing list.  Ask yourself is the code better before or after, or does
the change raise some other opportunity for improvement.  Another option
is to make the pattern in the semantic patch more restrictive, so that it
returns only results that are more likely to be of interest.

For example instead of the pattern ret = e you could match ret = e(...),
thus ensuring that the pattern only matches when the ret variable is
assigned the result of a function call.  This may cause you to miss some
change opportuities, but will give fewer results, so may make it easier to
find the promising ones.

julia

