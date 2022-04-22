Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147582901
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 15:51:18 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id o18so5778138qtk.7
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 08:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=1BbORbubK3mPTTyjmNON5QsIkK1rbTqnHGu/s/Sr61Y=;
        b=cqjqrjtVMsVeg7CuelaQXNB43o0bvHLvF12rdQfz/UJ4CXlTD/8R3AvBA+cDD8Lt+r
         5kLO68sHl4qYbTVTcG3XOeQDHwCaP6UigGvifk7Cx+cYRia0KXuX5pu+97NiBCk1ZIsD
         pauTnWiViiTv6ic+zEF0LyidfowODhFMVw9OZkA/oKMnXjiNx32iY93QuFUL3ws0PZGe
         Ey6QTK3Uv31VFwybXGstEmozYc2cqxtt+JqcUFS2hZ8GGFDcy935yY21y4Jt97TL44cm
         /QWR5Cio4sEkrolUNRM1u+iSNWoa1Qc4gh6x/2lh6nLKR/B/ieRIiVdjCYmeW0NNJwnN
         5Zvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=1BbORbubK3mPTTyjmNON5QsIkK1rbTqnHGu/s/Sr61Y=;
        b=FWEGc+Kn8Pvyj1B6mNgrL19vFnNq7FoaP4kGds/lX9wTXbXuiia/E9NeeECIPP1zdD
         LmbvqaphG4pz+igBSBpkbeZZg1+XNAenvYda2m0/6Z4NeKFDH65wxTaramUXWI9IroDP
         XJYuLxi0gO4XGOdNLEq5gOMq6FipAV2E8M4f1Fz56jO1oSs+qeVExqCbsVM2fG8npFlT
         JIl8Jzq/G9/48Icq/9GH3cKJbp8C75uVL67fKrZhQCpvAhtErzEbQDUlUbKcuO/gDUu2
         qMyzzxhi4B4QuHp3Ec00JTvF+aHa0lwNnv0iU+sT43tpEnb7JTqkTzI/qE8uKztDrwLk
         FTnw==
X-Gm-Message-State: AOAM531MAm6bfw5R0KArogwsdzK5x0wtwfnI47wQ2Dqk3YPgGw1eX1k9
	GyBdCAGqKmm6p15J+GjSytPVr5vz21k=
X-Google-Smtp-Source: ABdhPJz+Q0hzXf2QEhxAgNIleiOqjisZyQFbLNaczgZmYgesJSaQxyuNgHAVgQY5yMhDGQjrsJMkFg==
X-Received: by 2002:ac8:5195:0:b0:2f1:ed79:ecf7 with SMTP id c21-20020ac85195000000b002f1ed79ecf7mr3774758qtn.144.1650642677808;
        Fri, 22 Apr 2022 08:51:17 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id b126-20020a37b284000000b0069a11927e57sm1044677qkf.101.2022.04.22.08.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 08:51:16 -0700 (PDT)
Date: Fri, 22 Apr 2022 11:51:11 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: handle collections that don't require any modules
Message-ID: <20220422155111.GA313973@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Currently we assume that given a test collection, there will always be some set
of kernel modules required for running the tests in the collection. This
assumption is false for some collection, such as seccomp, and this patch handles
such cases.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/mbuto b/mbuto
index a3857b9..03a4547 100755
--- a/mbuto
+++ b/mbuto
@@ -241,12 +241,11 @@ profile_kselftests() {
 								>/dev/null
 
 	__files=$(list_join "${__colls}" "${__testpath}" '/config' ' ')
-	__cfgs="$(${CAT} ${__files} 2>/dev/null)"
+	__mods="$(${CAT} ${__files} 2>/dev/null | \
+			${AWK} -F'=' '/=m/ {print $1}' | ${SORT} -u)"
 
 	KMODS=
-	if [ ! -z "${__cfgs}" ]; then
-		__mods=$(echo "${__cfgs}" | ${AWK} -F'=' '/=m/ {print $1}' | ${SORT} -u)
-
+	if [ ! -z "${__mods}" ]; then
 		__pattern=$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')
 		__result=$(${BASENAME} -a -s .o \
 			   $(${EGREP} -rn --include "*Makefile" ${__pattern} | \
-- 
2.25.1

