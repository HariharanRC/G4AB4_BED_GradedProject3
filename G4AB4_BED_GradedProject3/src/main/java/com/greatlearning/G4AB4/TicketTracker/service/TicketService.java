package com.greatlearning.G4AB4.TicketTracker.service;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.greatlearning.G4AB4.TicketTracker.entity.Ticket;

import java.util.List;
@Component
public interface TicketService {

    List<Ticket> findAll(Sort sort);

    Ticket findById(int id);

    Ticket addOrUpdateTicket(Ticket ticket);

    void deleteTicket(Ticket ticket);

    List<Ticket> searchTicket(String title);
}
