Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8212901
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 15:56:06 +0000 (UTC)
Received: by mail-qv1-f46.google.com with SMTP id a5so6344600qvx.1
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 08:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=mLDZypbUUJ0fNfsPckf2hOLXS0qTX22SvWDbDsqoHbY=;
        b=aOxlmRhw+LofK8EuDVIGA1ndV7gPWmAVWlXSJhbn3xvLREiTU4dmxMbryHOdxuwm2I
         zCCckT467WHiXPZGbs3GIrNslFa1o6w2n5IFM2B090Bt1EfrLOw61o4u9K40glhRNJ9R
         +wXGxy/ON7xuk+6Fq0atCN6mvU6guXm10JOVaDKEVSHawEW04lJIbiwR5A5vtD3bJef1
         ktpgXMm71QGS8xPOlwcbdPCZ49MOWWYZr3yqZ3WRbcNDZ9nzDuufIG31Zpd1jlER/8Xr
         Vo7dIl63nC30CWFp3koT/XLdCcEzO5OM5oMmQzVoOThNCms2FCIhPFyyh9Y4N1vWWino
         5TyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=mLDZypbUUJ0fNfsPckf2hOLXS0qTX22SvWDbDsqoHbY=;
        b=7qhsWdHkFGQYV5J1dyUPbqgy7poAa2ZxGHkvxoa08je2Qm3/t1Ke/ersaRGuPEUj+d
         NQ89MItLA01rQwKikHZkqK6I5kcFFu25ZZ5SduzGTNQDT4kyQcUh1ZyOgS6RnaQUr9b7
         Hr2+cLWtU7k3xe8ZN+MN4EvHiI5NxDRwTkIOnB5PHIOrpUoVu4JE8paQN3IfkxnOtUvx
         NBzf5Delqz/UnMJNk7elAdXdoec0ngyzuxI2zyF11mlc+3xpcRrq9glfZGrk82+jv1Dg
         IE76sI3F+vkSJzpSPNkXelL/ccWQEyPf/p+HYqGUjPB9OObS7ESVvMNC0OU6JdCy8gtA
         1Zxw==
X-Gm-Message-State: AOAM533Ul8DBnnmNIrsq/4eDaRVq1zjdIkqZMeaeEkac8MpbkvriXhWB
	OmGVW/ChUpqe2LswsDVPasE/oxKnioE=
X-Google-Smtp-Source: ABdhPJzsffFugiW5C2EehCCQxgN9v6up4rZUJSrXyJ6PhkvP0qh5ETqG7/UfKJFLDRfWVJS/sbotyA==
X-Received: by 2002:ad4:4eea:0:b0:446:62cd:3c8f with SMTP id dv10-20020ad44eea000000b0044662cd3c8fmr3916092qvb.18.1650642965032;
        Fri, 22 Apr 2022 08:56:05 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id h186-20020a376cc3000000b00699c789a757sm1067936qkc.132.2022.04.22.08.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 08:56:04 -0700 (PDT)
Date: Fri, 22 Apr 2022 11:55:59 -0400
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev
Subject: [PATCH] mbuto: quote variable assignments
Message-ID: <20220422155559.GA356670@euclid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add missing quotes around variable assignments.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/mbuto b/mbuto
index 03a4547..88755c5 100755
--- a/mbuto
+++ b/mbuto
@@ -226,10 +226,10 @@ profile_kselftests() {
 	done
 	__colls="$(echo ${__colls} | ${TR} ' ' '\n' | ${SORT} -u)"
 
-	__pattern=$(list_join "${__colls}" '^' '$' '|')
+	__pattern="$(list_join "${__colls}" '^' '$' '|')"
 
-	__skip_targets=$(${AWK} '/^TARGETS/ { print $3}' ${__makefile} | \
-		${EGREP} -v "${__pattern}" | ${TR} '\n' ' ')
+	__skip_targets="$(${AWK} '/^TARGETS/ { print $3}' ${__makefile} | \
+		${EGREP} -v "${__pattern}" | ${TR} '\n' ' ')"
 
 	${MAKE} SKIP_TARGETS="${__skip_targets}" -C ${__testpath} install \
 								 >/dev/null 2>&1
@@ -240,26 +240,26 @@ profile_kselftests() {
 	INSTALL_MOD_PATH="${MODDIR}" ${MAKE} modules_install -j ${THREADS} \
 								>/dev/null
 
-	__files=$(list_join "${__colls}" "${__testpath}" '/config' ' ')
+	__files="$(list_join "${__colls}" "${__testpath}" '/config' ' ')"
 	__mods="$(${CAT} ${__files} 2>/dev/null | \
 			${AWK} -F'=' '/=m/ {print $1}' | ${SORT} -u)"
 
 	KMODS=
 	if [ ! -z "${__mods}" ]; then
-		__pattern=$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')
-		__result=$(${BASENAME} -a -s .o \
+		__pattern="$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')"
+		__result="$(${BASENAME} -a -s .o \
 			   $(${EGREP} -rn --include "*Makefile" ${__pattern} | \
-			     ${AWK} -F'+=' '/+=/ {print $2}'))
-		__find_pattern=$(list_join "${__result}" '-name ' '.ko ' '-o ')
+			     ${AWK} -F'+=' '/+=/ {print $2}'))"
+		__find_pattern="$(list_join "${__result}" '-name ' '.ko ' '-o ')"
 
-		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
+		KMODS="$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')"
 
 		workers kmod_strip_worker
 
 		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
 
-		__kmods_needed=$(list_join "${__result}" '' '' ' ')
-		__kmods_missing=$(list_diff "${__kmods_needed}" "${KMODS}")
+		__kmods_needed="$(list_join "${__result}" '' '' ' ')"
+		__kmods_missing="$(list_diff "${__kmods_needed}" "${KMODS}")"
 
 		if [ ! -z "${__kmods_missing}" ]; then
 			notice "WARNING: missing modules: ${__kmods_missing}"
-- 
2.25.1

