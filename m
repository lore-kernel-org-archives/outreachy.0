X-GM-THRID: 6663863789016842240
X-Received: by 2002:aca:ed95:: with SMTP id l143mr9485353oih.56.1551637828200;
        Sun, 03 Mar 2019 10:30:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:76c9:: with SMTP id p9ls6566624otl.5.gmail; Sun, 03 Mar
 2019 10:30:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwt9RyzWEui7TpjXRQK1VwAjgisu0VpYyBP1QbXZ603e3/pFGw8t2OyCAvUJ7Lu8o4A3i5c
X-Received: by 2002:a9d:4e86:: with SMTP id v6mr9696698otk.72.1551637827477;
        Sun, 03 Mar 2019 10:30:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551637827; cv=none;
        d=google.com; s=arc-20160816;
        b=KmQkGRGGinZPunXWCqMYewboh0gmZMzaotP5GGEYdI0VCOBYxt83uWJJZmp2d47077
         dq968aou2mSj/t9bIVRH8G3QBkxCsBCSIjEkgmyxiFCfWfCsS//OYOgauYOl4upQhR68
         MPVjY7d5jCdtYC/xK8ZwmsVT09I+GO15Sj2U1lmZlc0Q8PegAKIag9wHXYb/Dg4ZYpcN
         yaYnBYSs1wxYN5w/6e+oVf5/VbiQOZSQgu2iQwTH0vhzzyMg+aQIcXH0LjdOpm6hK4Wq
         PTpcaXFTAeXhA5coUYlJ0xFBNnJ0wBb3op/g2GysAY/NiFvHXIqmeqQiQAwJTs6CJ7eB
         1yeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=W8Hx9Y7ogNLHblPT7ay1HTRpTS3xFyALi5rHMl6rAXQ=;
        b=KjwWboJu7KkbOQk2oUPFx5PacZPwyoij0EkQZNLa7zBU8MlPlbhnQS5ObmWic4f12I
         9niuApAKikOxlg6AtFKjwQRL7mqa8PypA95aY8UfaDrGu5qR+cA+2VkmIIwuWnkfvzif
         YYT/0pPa3L2BxQVCxuhTyXWYHWaSCZpwtMevbog3pGJX2OKvIhW/j+qzMtYKKQX+Y37L
         pu8DBRnQq0ljAAywSoGIOuirDwQPIg6pN4GeBU29sKDGY/zqpUus3Od+qI54UiyepitS
         SstfiM7cki5oUDVKENCCK9DSOjSLlKUZZwSf99hSSovTAJknbazXZkLLd9T8eGVT0ZeZ
         VF6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wu6PPGNp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id x31si302391otb.1.2019.03.03.10.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 10:30:27 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wu6PPGNp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id 98so2407051oty.1
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 10:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W8Hx9Y7ogNLHblPT7ay1HTRpTS3xFyALi5rHMl6rAXQ=;
        b=Wu6PPGNpjaxjrq+c0RxXOpHv1SUmgV7LMH+wjw5zvf1QDHsx4TuDJ5ROUPFpcB4XSo
         JG/ErsYrfZEIKFNFbT7S7etLGQ6A2nacPJ7sVJoRsC5hOU8aZwyOqZ9wMPzhnksVpErj
         UIKy2i//EPAOO/Dpp/11wMe4YZ42gn9QT84WtdfLHU6psShAMWbouIakQys4Jghip6TC
         6JaNzLamB5xPbARotdcWMZMLxK7HOq/ttTKhp9KzRXCgAp8dGOAVgdZoxsTzVM0sqm8u
         cpkPbxbyBsszWeD9Lp1YniZTDUTApnEnAO7QWWhJpip+mCiWitfPODLw/TVTAwvsRvTE
         Mkeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W8Hx9Y7ogNLHblPT7ay1HTRpTS3xFyALi5rHMl6rAXQ=;
        b=acFRSvp3vpmjkpiSE8uzZYbJFtmIhcjkN3+YcjazevC9LNH62WbQAQzilB89NQAbL0
         tNaEYwuZvNP2L3dr/+rPtvbiGTzgHj/T/BiD/eiIy+R9y1YypCuGW3oZtUj37+IZn9/J
         nddPMSGvglWGaM0fHUYW9hgxKs5QeSfjiwnLGebsTxX96tyn1oSIdj4S62VL/B5XhtGU
         VvMAm3MOq3mfjRPN/5p5jTqg/M6JC88fnn+ymQG/FH0wSCnxPd39LLuc3J/tftAn+1/R
         OfDInPs+PNCdJtBxG2Lw7khdrcEuuNqElgQkLooq45b0D9mPFqold3frdMdHb1MYxV6s
         k22A==
X-Gm-Message-State: APjAAAUWbz1l0uhhEaXKA9p95Fwf0pZLP1Wg4SQXvlsiaQGsqidjwIJj
	izvnNDGpZ2fJ+rFJH6CHzm8/sICFPwI=
X-Received: by 2002:a9d:66c9:: with SMTP id t9mr9634108otm.36.1551637827168;
        Sun, 03 Mar 2019 10:30:27 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id h205sm1591923oib.11.2019.03.03.10.30.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 10:30:26 -0800 (PST)
Date: Sun, 3 Mar 2019 12:30:23 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/8] Fix checkpatch.pl issues
Message-ID: <20190303183022.GA30916@madhuleo>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
 <20190303080915.GA712@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190303080915.GA712@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 03, 2019 at 09:09:15AM +0100, Greg KH wrote:
> On Sat, Mar 02, 2019 at 12:34:42PM -0600, Madhumitha Prabakaran wrote:
> > These patches fix warnings of line over 80 characters, comment style
> > issues of SPDX License Identifier and remove unnecessary blank line.
> > 
> > Madhumitha Prabakaran (8):
> >   Staging: vt6655: card.h: Fix line over 80 character
> >   Staging: vt6655: card.h: Fix line over 80 characters
> >   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
> >   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
> >   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
> >   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
> >   Staging: vt6655: mac.c: Remove unnecessary blank line
> >   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier
> 
> Again, does not match the subject lines :(
> 
> Perhaps if you typed out here _exactly_ what you did to create this
> cover letter, and send them off to us, it might help in determining what
> you did wrong.
> 
> thanks,
> 
> greg k-h

Thanks

Task: commit patchsets, which contains two patches

1. git log --pretty=oneline --abbrev-commit 

8f8d8bbad6bc (HEAD -> staging-testing) Staging: vt6655: Fix ...
f68b96b7f7f5 Staging: vt6655: Fix comment ...

08b9bee66e3e (origin/staging-testing, origin/staging-next) ...

2. Format-patch 

git format-patch -o /tmp/three/ --cover-letter -n --thread=shallow --cc="madhumithabiw@gmail.com" f68b96b7f7f5^..8f8d8bbad6bc

/tmp/three/0000-cover-letter.patch
/tmp/three/0001-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch
/tmp/three/0002-Staging-vt6655-Fix-comment-style-of-SPDX-License-Ide.patch

3. Format patch for versioning 

git format-patch -n --subject-prefix="PATCH v2" --cover-letter

On executing this, my subject prefix never changed. I assume, this is the issues. As this creates same version of subject line and clubs all version into same conversation. 

4. I manually edit the vim /tmp/three/0000-cover-letter.patch

5. Edited the 'SUBJECT HERE'  and 'BLURB HERE'. Here too I noticed that the subject prefix never changed.. So i tried to edit it manually.
   I tried to change subject prefix for all the three files manually

6. After that I tried using mutt and git to send files 

For git I used 
git send-email --to-cover --cc-cover /tmp/three/*.patch

For mutt I used 
mutt -H /tmp/third/0000......patch
For all three files I individually sent  it via mutt

Referred: 1. https://kernelnewbies.org/Outreachyfirstpatch
          2. https://kernelnewbies.org/PatchSeries

Thanks,

Madhumitha


