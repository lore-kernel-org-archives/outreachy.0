Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EA33219
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650035449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FAeAGdldSfzDRARzYVko5HULiD9eKgERGaPOKCGYwIE=;
	b=UfaHTX3docb30JSDzTDMdRoh8pA963v/oYhEyQyMYFryHZajHJhhfF/ufKbWylGgXe6qk9
	IxY3aJs3USxhtmrgUe5vrJ9Yav2AAQKgVGMFG5qGJtzccmPeDZw4GI7a9K551OseR2jLSz
	eRN4+MxMO+SVHX4X3OAh2vdGu3zy8kM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-7-c9My5tbrMbqn2-0O6ANc5g-1; Fri, 15 Apr 2022 11:10:47 -0400
X-MC-Unique: c9My5tbrMbqn2-0O6ANc5g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA4A03C02185;
	Fri, 15 Apr 2022 15:10:46 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9FA991458315;
	Fri, 15 Apr 2022 15:10:46 +0000 (UTC)
Date: Fri, 15 Apr 2022 17:10:44 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] mbuto: add a function to join elements of a list into a
 string
Message-ID: <20220415171044.064063ca@elisabeth>
In-Reply-To: <20220415102317.GA882489@euclid>
References: <20220415102317.GA882489@euclid>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Applied, minor changes:

On Fri, 15 Apr 2022 06:23:17 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> In multiple places we loop over a list by joining its elements with a prefix,
> suffix, and a delimiter into a single string. Add a function for this
> functionality and replace these loops with a function.
> 
> Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> ---
>  mbuto | 36 +++++++++++++++++++++---------------
>  1 file changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/mbuto b/mbuto
> index 14176c3..c1695fb 100755
> --- a/mbuto
> +++ b/mbuto
> @@ -223,21 +223,11 @@ profile_kselftests() {
>  	if [ -f ${__cfg} ]; then
>  		__mods=$(${AWK} -F'=' '/=m/ {print $1}' ${__cfg} | ${SORT} -u)
>  
> -		__egrep_pattern=""
> -		for __c in ${__mods}; do
> -	    		__egrep_pattern='^obj-\$\('"${__c}"'\).*.o$|'"${__egrep_pattern}"
> -		done
> -		__egrep_pattern=${__egrep_pattern%|}
> -
> -		__kmods_needed=
> -		__find_pattern=
> -		for __mo in $(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
> -				${AWK} -F'+=' '/+=/ {print $2}'); do
> -			__m=$(${BASENAME} -s .o ${__mo})
> -			__find_pattern="-name ${__m}.ko -o ${__find_pattern}"
> -			__kmods_needed="${__m} ${__kmods_needed}"
> -		done
> -		__find_pattern=${__find_pattern%-o }
> +		__egrep_pattern=$(list_join "${__mods}" '^obj-\$\(' '\).*.o$' '|')
> +		__egrep_result=$(${BASENAME} -a -s .o \
> +				$(${EGREP} -rn --include "*Makefile" ${__egrep_pattern} | \
> +  				${AWK} -F'+=' '/+=/ {print $2}'))
> +		__find_pattern=$(list_join "${__egrep_result}" '-name ' '.ko ' '-o ')

Aligned arguments like you would do in C (in the kernel), and dropped
"egrep_" from variable names (that's already clear), it's slightly more
readable now and fits in 80 columns.

Indeed, in general, it's not very readable anyway, but I guess it's an
acceptable trade-off considering the language at hand.

>  
>  		KMODS=$(${FIND} "${MODDIR}" ${__find_pattern} | ${TR} '\n' ' ')
>  
> @@ -245,6 +235,7 @@ profile_kselftests() {
>  
>  		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
>  
> +		__kmods_needed=$(list_join "${__egrep_result}" '' '' ' ')
>  		__kmods_missing=$(list_diff "${__kmods_needed}" "${KMODS}")
>  
>  		if [ ! -z "${__kmods_missing}" ]; then
> @@ -435,6 +426,21 @@ list_diff() {
>  	printf '%s' "${__diff}"
>  }
>  
> +# list_join() - Given a list of tokens $1, prepend prefix $2 and append suffix
> +# $3 to each token and join them with a delimiter $3 into a single string

I reworded this a bit: arguments are already described below.

> +# $1: list
> +# $2: prefix
> +# $3: suffix
> +# $4: delimiter

...clarified the usage of delimiter, used tabs for consistency.

> +list_join() {
> +	__s=
> +	for __t in ${1}; do
> +		__s="${2}${__t}${3}${4}${__s}"
> +	done
> +	__s=${__s%${4}}
> +	printf '%s' "${__s}"
> +}
> +
>  ################################################################################
>  
>  

-- 
Stefano

