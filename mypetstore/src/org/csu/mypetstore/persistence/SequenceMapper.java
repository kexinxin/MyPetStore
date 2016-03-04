package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Sequence;



public interface SequenceMapper {
	
	Sequence getSequence(Sequence sequence);
	void updateSequence(Sequence sequence);
}
