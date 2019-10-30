X-GM-THRID: 6749323707377778688
X-Received: by 2002:a63:4e13:: with SMTP id c19mr31006587pgb.225.1572396507187;
        Tue, 29 Oct 2019 17:48:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:a503:: with SMTP id v3ls1036549pfm.7.gmail; Tue, 29 Oct
 2019 17:48:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxf6aWV9m/03iVN72K/W3xJEw1gV98T4HqwTHieIGeySRQ9H8xtvr10G7U8/k1FbvmCELTY
X-Received: by 2002:a63:2f81:: with SMTP id v123mr31695384pgv.239.1572396506297;
        Tue, 29 Oct 2019 17:48:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572396506; cv=none;
        d=google.com; s=arc-20160816;
        b=d5wfaELdXiHUCNAmIm3UOJUXOnvglA9Bt2OR94DLEpA9PYe6lY0fw/Cj5vpgslOCuH
         vzVzf+2f9a0G8LmhsMapNWby6QjiXwjtTgUjkWapN6blkpEJ5cGgmvfsVVUwMNX++O1E
         15ZS6GjkGOLPce03xKEc+qYuWAwikaRBGhThJRXr45oTyAWZlgg/SykaPmp99qLmnirz
         IWKCybEX/KxQX7Ib+WQ6Ka2kZ5at2Pw0b0C3KI8hU6M57/NGXdCiE5ZCF7y4RMg1aI6e
         ksUn2O7qBFyPbCU1oGigE5V321UxKSQ5FZtpj5pismBRRTF1oSHtvxxDz/+H5rsc3Tul
         nbsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m0rFszwQurgDXRebRO6CBjRpVJSBt2BBclY/BzHQ+Dk=;
        b=uhcCGw2QOAdcsGpATJcGkRRQNhW1/y6In5L9r0lxkMiitMAXbBJLzqejvQpk8DBWcQ
         dbkyP6ZwrkVLq72HrJR0coSLDBwdZzz8GFZrKoGoYx0qG8KEXk5exGmUrtPDBGa1hVkQ
         bBfLo0/iOYuGZ2g/ylzbw6X+fD/nvAQMK76AF1+3mOWa5uN+gat4gNAlZ37cAIuV7YBf
         JQ9tUtcL8aLVFde1AXho2H2Z3mkT3lOW2Ga/f/RlKvYvHks2qGE3RmVoi2Y5Gg4lt9EX
         CUz/xH6zOGTVQo9ZId36tn/XoN/iaqn020rzgLPkEXvhBDuUFu44wUoJ1WwUkTJE8FE0
         KWeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="abqVctJ/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id t17si23251pgu.1.2019.10.29.17.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="abqVctJ/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa43.google.com with SMTP id o198so79584vko.11
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 17:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=m0rFszwQurgDXRebRO6CBjRpVJSBt2BBclY/BzHQ+Dk=;
        b=abqVctJ/L65M6/OXZKiFsitUYYnWvipwvjZy9y72buonKmQ8+GTIFHnEdclLq/dSAD
         taT1GszAHkx2R0VDPdh6Y1i0+an3X6pDEYfrVvRnAmWARaRdEGAO9hl5vcpjiqz8CvS/
         Egc+KPsKvEA66FF4Yl5pQQ9f165qUMBoOx+r1IhPU8aM8indyBTf0c47NUuHkscnj1N+
         oXYXHwZ0z0mCddZ43DCS+5lzupWLqeIae6cTJP600zefju9AGuB9YxjYdUPlraTq4nxd
         lWeH3IJAnVxBZsPl9qYGhJh+S5YkN5ums+Qe7BtElARB99sBN1ORyPkNVZRKrsZpwPTn
         8xuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=m0rFszwQurgDXRebRO6CBjRpVJSBt2BBclY/BzHQ+Dk=;
        b=ctzWoPnGtYU+KHe+bMeRITa+FNhaOF8HhpAEo3BH1iAB/9M323Yb0c2hnQjYXzPdcI
         6bPWU6vN0Rb7VzvRvvy09OvfQdFBhbJ4rz4vHr20ldfgP4LuU92zS6+PUo4Vci2NAY4B
         vlhSrNsGzlULRMvxyAK2WuT9/yoYoqaR6wOGY5tOhUB/WNhP3Y4CJKmC7UzFn1vtVL1Q
         QBkMhnYUQ5f4aepKnXm7thiQjWQVKYibMIHfRxoSIPBQH3BjQ2/Sa9+LTX7H7Fe0D1zK
         uaai0/wdTDZglgtpSz2EGY2ZoaBhbBmHg1OZssKMn+B2NAjDTOHMlkIBY6soR5kUbxfu
         IQjg==
X-Gm-Message-State: APjAAAXMI5f+r/XUPbV4GNcfkIJ7bguKLj+eMoOHUCdIacr1Rn2VMIbl
	iIlsuI3vqqb4t02WvVDZX4PekjTHzWRkYg==
X-Received: by 2002:a05:6122:328:: with SMTP id d8mr13406331vko.14.1572396505478;
        Tue, 29 Oct 2019 17:48:25 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id l193sm366834vkl.1.2019.10.29.17.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 17:48:25 -0700 (PDT)
Date: Tue, 29 Oct 2019 19:48:22 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v5 0/2] Adjustments in function call
Message-ID: <cover.1572396117.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

V2: Update the message of the second commit to include the updated
    patch version and to use the Suggested-By tag.
V3: Update the first commit to include the Suggested-By tag and
    the second commit to update the patch version.
V4: Correct the format of the first commit to use the Suggested-by
    tag properly.
V5: Add the version revision that wasn't included in the previous
    patchset.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


